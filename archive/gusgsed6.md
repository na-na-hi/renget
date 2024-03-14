```
import json, sys, http.server, time, asyncio, socket, threading, requests
from concurrent.futures import ThreadPoolExecutor
from anthropic import AsyncAnthropic

#################################################################
#
# ⣀⣀⣤⣶⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿
# ⣿⣿⣿⣿⣿⣿⣿⣿⣿⡶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿
# ⣟⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿
# ⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢹⣿⣿
# ⢻⣿⣷⣿⡿⢛⠻⣦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿
# ⠀⠈⠻⣿⠣⣟⡧⢠⠁⡈⠯⢶⠖⠒⠶⣦⣠⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿
# ⣶⣤⣾⣿⠀⡑⠁⢸⡨⢼⠑⠖⠂⢠⡾⠷⣉⡙⣛⣙⠓⠶⠤⠄⢤⣀⡀⢸⣿⣿
# ⣿⣿⣿⣿⣧⡁⢀⢾⠃⠜⠨⠀⢠⡂⡉⢢⢀⣶⣿⡖⢫⣟⢿⢳⣶⣖⢍⣻⣿⣿
# ⠀⠈⠉⠙⠛⠳⢾⣿⡟⣤⣦⡐⣑⣅⣱⠀⢁⠙⠿⣣⢦⠉⢄⠌⠚⠔⡄⢸⣿⣿
# ⠀⠀⠀⠀⠀⠀⢀⢮⡼⠉⠙⠷⣦⡙⠷⢤⣚⣟⠶⢯⠦⣀⡊⠀⡐⠜⠀⢸⣿⣿
# ⠀⠀⠀⢀⣴⠿⠟⠚⠈⠙⠉⠉⠁⠀⠑⠑⠉⠙⣷⣶⡌⠓⡫⠷⣮⣄⠐⢾⣿⣿
# ⠀⠀⠼⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⠘⠉⢣⣰⣸⠗⣮⣟⣍⣻⣿⣿
# ⣤⣐⣒⠠⠄⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⠔⠊⠁⠈⠙⢢⠋⣽⠻⢿⣿⣿
# ⣿⣿⣿⣿⣿⣷⣶⣶⣆⣀⣀⣀⣀⣀⣶⣿⣿⣿⣷⣶⣶⣦⣀⣈⣀⣀⣀⣸⣿⣿
# ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
#
#           StoryProxy
#
# Enter your configuration values here:
#
# Your very legitimate Claude URL
PROXY_URL = 'https://representation-cocktail-computing-rose.trycloudflare.com/proxy/aws/claude'
# Your very legitimate Claude API key
PROXY_PASSWORD = 'desu'
# Local proxy host
HOST = '127.0.0.1'
# Local proxy port
PORT = 5001
# Default model, but we dynamically provide a list per proxy and allow selection
CLAUDE_MODEL = 'anthropic.claude-3-sonnet-20240229-v1:0'
################################################################

KcppVersion = "1.60.1" # Kobold lite used this to determine SSE compat, so I'm leaving it
showdebug = True
exitcounter = -1
args = None #global args
sslvalid = False
nocertify = False
start_time = time.time()

class ServerRequestHandler(http.server.SimpleHTTPRequestHandler):

    def __init__(self, addr, port, embedded_kailite, proxy_url, proxy_password):
        self.addr = addr
        self.port = port
        self.embedded_kailite = embedded_kailite
        self.proxy_url = proxy_url
        self.proxy_password = proxy_password
        self.claude = AsyncAnthropic(base_url=proxy_url, api_key=proxy_password)

    def __call__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    async def generate_text(self, genparams, api_format, stream_flag):
        global friendlymodelname
        is_quiet = False 

        rp1 = genparams.get('repeat_penalty', 1.0)
        rp2 = genparams.get('repetition_penalty', 1.0)
        rp3 = genparams.get('rep_pen', 1.0)
        rp_max = max(rp1,rp2,rp3)
        genparams["rep_pen"] = rp_max
        model = genparams.get('model', CLAUDE_MODEL)

        messages = []
        system_prompt = None

        if api_format==1:
            genparams["prompt"] = genparams.get('text', "")
            genparams["top_k"] = int(genparams.get('top_k', 120))
            genparams["max_length"] = genparams.get('max', 2048)

        elif api_format==3 or api_format==4:
            genparams["max_length"] = genparams.get('max_tokens', 2048)
            presence_penalty = genparams.get('presence_penalty', genparams.get('frequency_penalty', 0.0))
            genparams["presence_penalty"] = presence_penalty
            # openai allows either a string or a list as a stop sequence
            if isinstance(genparams.get('stop',[]), list):
                genparams["stop_sequence"] = genparams.get('stop', [])
            else:
                genparams["stop_sequence"] = [genparams.get('stop')]

            genparams["sampler_seed"] = genparams.get('seed', -1)
            genparams["use_default_badwordsids"] = genparams.get('ignore_eos', False)
            genparams["mirostat"] = genparams.get('mirostat_mode', 0)

            if api_format==4:
                # Extract system message and supply seperately as per anthropic api
                messages = genparams.get('messages', [])
                system_messages = [msg['content'] for msg in messages if msg['role'] == 'system']
                system_prompt = '\n'.join(system_messages)
                messages = [msg for msg in messages if msg['role'] != 'system'] 

        # Format plaintext prompts for messages api
        # TODO: this is all opinionated, feel free to change for whatever prompting you like

        user_instruction = "Continue the scenario with the next 5-8 paragraphs, closely following the style of the existing text. Do not conclude the scene unless it's unavoidable, don't add any commentary, and don't end with a cliffhanger."
        if not genparams.get('prompt', '') or '\n' not in genparams.get('prompt', '').strip():
            user_instruction = "Let's start a story. Write the first 5-8 paragraphs and set the scene for us to work off of. Leave things open for a continuation, don't add any commentary, and don't end with a cliffhanger."

        if api_format == 2:
            # Apply my shitty hacks to kobold memory
            memory = genparams.get('memory', None)
            if memory:
                # Check if using my special format
                if '{SYSTEM}' in memory and '{/SYSTEM}' in memory:
                    try:
                        system_prompt = memory[memory.index('{SYSTEM}')+len(system):memory.index('{/SYSTEM}')].strip()
                    except:
                        print('System prompt parsing failed, are your tags set up correctly?')
                if '{INSTRUCTION}' in memory and '{/INSTRUCTION}' in memory:
                    try:
                        user_instruction = memory[memory.index('{INSTRUCTION}')+len('{INSTRUCTION}'):memory.index('{/INSTRUCTION}')].strip()
                    except:
                        print('Instruction parsing failed, are your tags set up correctly?')

                if '{SYSTEM}' not in memory and '{INSTRUCTION}' not in memory:
                    # If not using format, just use memory as system prompt
                    system_prompt = memory

        if api_format != 4:
            prompt = genparams.get('prompt', '') 
            # Try to split the last paragraph off to use as prefill
            cleaned_prompt = prompt.strip()
            split_prompt = cleaned_prompt.strip().rsplit('\n', 1)
            if prompt.endswith('\n'):
                split_prompt[1] += '\n'
            if len(split_prompt) == 2 and '' not in split_prompt:
                messages = []
                messages.append({'role':'assistant', 'content':split_prompt[0]})
                messages.append({'role':'user', 'content': user_instruction})
                messages.append({'role':'assistant', 'content':split_prompt[1]})
            else:
                messages.append({'role':'user', 'content': user_instruction})
                if prompt:
                    messages.append({'role':'assistant', 'content':prompt})

        # Make sure first message is user as per anthropic api
        if len(messages) > 0 and messages[0]['role'] != 'user':
            messages.insert(0, {"role":"user", "content":"Let's begin."})

        recvtxt = ""

        if stream_flag:
            self.send_response(200)
            self.send_header("cache-control", "no-cache")
            self.send_header("connection", "keep-alive")
            self.end_headers(content_type='text/event-stream')


        claude_params = {
                'max_tokens':genparams.get('max_length', 2048), 
                'top_p':genparams.get('top_p', 1.0),
                'top_k':genparams.get('top_k', 0),
                'stop_sequences':genparams.get('stop_sequence', []),
                'temperature':genparams.get('temperature', 0.8),
                'model':model,
                'messages':messages
            }
        if system_prompt:
            claude_params['system'] = system_prompt
        async with self.claude.messages.stream(**claude_params) as stream:
            async for text in stream.text_stream:
                if stream_flag:
                    if api_format == 4:  # if oai chat, set format to expected openai streaming response
                        event_str = json.dumps({"id":"koboldcpp","object":"chat.completion.chunk","created":1,"model":model,"choices":[{"index":0,"finish_reason":"length","delta":{'role':'assistant','content':text}}]})
                        await self.send_oai_sse_event(event_str)
                    elif api_format == 3:  # non chat completions
                        event_str = json.dumps({"id":"koboldcpp","object":"text_completion","created":1,"model":model,"choices":[{"index":0,"finish_reason":"length","text":text}]})
                        await self.send_oai_sse_event(event_str)
                    else:
                        event_str = json.dumps({"token": text})
                        await self.send_kai_sse_event(event_str)
                    tokenStr = ""

                if not is_quiet:
                    print(text, end="", flush=True)

        if api_format == 4 or api_format == 3:  # if oai chat, send last [DONE] message consistent with openai format
            await self.send_oai_sse_event('[DONE]')
        
        if stream_flag:
            self.wfile.flush()
            await asyncio.sleep(0.1)
            self.close_connection = True
            await asyncio.sleep(0.05)
 

        accumulated = await stream.get_final_message()
        recvtxt = json.loads(accumulated.json())['content'][0]['text']

        if api_format==1:
            res = {"data": {"seqs":[recvtxt]}}
        elif api_format==3:
            res = {"id": "cmpl-1", "object": "text_completion", "created": 1, "model": model,
            "usage": {"prompt_tokens": 100,"completion_tokens": 100,"total_tokens": 200},
            "choices": [{"text": recvtxt, "index": 0, "finish_reason": "length"}]}
        elif api_format==4:
            res = {"id": "chatcmpl-1", "object": "chat.completion", "created": 1, "model": model,
            "usage": {"prompt_tokens": 100,"completion_tokens": 100,"total_tokens": 200},
            "choices": [{"index": 0, "message":{"role": "assistant", "content": recvtxt,}, "finish_reason": "length"}]}
        else:
            res = {"results": [{"text": recvtxt}]}

        try:
            return res
        except Exception as e:
            print(f"Generate: Error while generating: {e}")


    async def send_oai_sse_event(self, data):
        if data=="[DONE]":
            self.wfile.write(f'data: {data}'.encode())
        else:
            self.wfile.write(f'data: {data}\n\n'.encode())
        self.wfile.flush()

    async def send_kai_sse_event(self, data):
        self.wfile.write(f'event: message\n'.encode())
        self.wfile.write(f'data: {data}\n\n'.encode())
        self.wfile.flush()

    async def handle_request(self, genparams, api_format, stream_flag):
        tasks = []

        try:
            generate_task = asyncio.create_task(self.generate_text(genparams, api_format, stream_flag))
            tasks.append(generate_task)

            await asyncio.gather(*tasks)
            generate_result = generate_task.result()
            return generate_result
        except (BrokenPipeError, ConnectionAbortedError) as cae: # attempt to abort if connection lost
            print("An ongoing connection was aborted or interrupted!")
            print(cae)
            #handle.abort_generate()
            time.sleep(0.2) #short delay
        except Exception as e:
            print(e)
    
    def do_GET(self):
        self.path = self.path.rstrip('/')
        response_body = None
        content_type = 'application/json'

        if self.path in ["", "/?"] or self.path.startswith(('/?','?')): #it's possible for the root url to have ?params without /
            content_type = 'text/html'
            if self.embedded_kailite is None:
                response_body = (f"Embedded Kobold Lite is not found.<br>You will have to connect via the main KoboldAI client, or <a href='https://lite.koboldai.net?local=1&port={self.port}'>use this URL</a> to connect.").encode()
            else:
                response_body = self.embedded_kailite

        elif self.path.endswith(('/api/v1/model', '/api/latest/model')):
            models_json = requests.get(self.proxy_url + '/v1/models', headers={"x-api-key": self.proxy_password}).json()
            models_str = ' / '.join([model['id'] for model in models_json['data']])
            response_body = (json.dumps({'result':models_str}).encode())

        elif self.path.endswith(('/api/v1/info/version', '/api/latest/info/version')):
            response_body = (json.dumps({"result":"1.2.5"}).encode())

        elif self.path.endswith(('/api/extra/version')):
            response_body = (json.dumps({"result":"KoboldCpp","version":KcppVersion}).encode())

        elif self.path.endswith('/v1/models'):
            models_json = requests.get(self.proxy_url + '/v1/models', headers={"x-api-key": self.proxy_password}).json()
            response_body = (json.dumps(models_json).encode())
 
        elif self.path=="/api":
            content_type = 'text/html'
            if self.embedded_kcpp_docs is None:
                response_body = (f"Kobold compatible API is running!\n\nAPI usage reference can be found at the wiki: https://github.com/LostRuins/koboldcpp/wiki").encode()
            else:
                response_body = self.embedded_kcpp_docs

        elif self.path=="/v1":
            content_type = 'text/html'
            response_body = (f"OpenAI compatible API is running!\n\nFor usage reference, see https://platform.openai.com/docs/api-reference").encode()

        elif self.path.endswith(('/api')) or self.path.endswith(('/api/v1')):
            self.path = "/api"
            self.send_response(302)
            self.send_header("location", self.path)
            self.end_headers(content_type='text/html')
            return None

        if response_body is None:
            self.send_response(404)
            self.end_headers(content_type='text/html')
            rp = 'Error: HTTP Server is running, but this endpoint does not exist. Please check the URL.'
            self.wfile.write(rp.encode())
        else:
            self.send_response(200)
            self.send_header('content-length', str(len(response_body)))
            self.end_headers(content_type=content_type)
            self.wfile.write(response_body)
        return

    def do_POST(self):
        content_length = int(self.headers['content-length'])
        body = self.rfile.read(content_length)
        self.path = self.path.rstrip('/')
        response_body = None
        response_code = 200
 
        try:
            sse_stream_flag = False

            api_format = 0 #1=basic,2=kai,3=oai,4=oai-chat
            is_txt2img = False

            if self.path.endswith('/request'):
                api_format = 1

            if self.path.endswith(('/api/v1/generate', '/api/latest/generate')):
                api_format = 2

            if self.path.endswith('/api/extra/generate/stream'):
                api_format = 2
                sse_stream_flag = True

            if self.path.endswith('/v1/completions'):
                api_format = 3

            if self.path.endswith('/v1/chat/completions'):
                api_format = 4

            if api_format > 0:
                genparams = None
                try:
                    genparams = json.loads(body)
                except Exception as e:
                    utfprint("Body Err: " + str(body))
                    return self.send_response(503)


                if api_format > 0:#text gen
                    # Check if streaming chat completions, if so, set stream mode to true
                    if (api_format == 4 or api_format == 3) and "stream" in genparams and genparams["stream"]:
                        sse_stream_flag = True

                    gen = asyncio.run(self.handle_request(genparams, api_format, sse_stream_flag))

                    try:
                        # Headers are already sent when streaming
                        if not sse_stream_flag:
                            self.send_response(200)
                            genresp = (json.dumps(gen).encode())
                            self.send_header('content-length', str(len(genresp)))
                            self.end_headers(content_type='application/json')
                            self.wfile.write(genresp)
                    except Exception as ex:
                        if args.debugmode:
                            print(ex)
                        print("Generate: The response could not be sent, maybe connection was terminated?")
                        time.sleep(0.2) #short delay
                    return
        except:
            self.send_response(404)
            self.end_headers(content_type='text/html')


    def do_OPTIONS(self):
        self.send_response(200)
        self.end_headers(content_type='text/html')

    def do_HEAD(self):
        self.send_response(200)
        self.end_headers(content_type='text/html')

    def end_headers(self, content_type=None):
        self.send_header('access-control-allow-origin', '*')
        self.send_header('access-control-allow-methods', '*')
        self.send_header('access-control-allow-headers', '*, Accept, Content-Type, Content-Length, Cache-Control, Accept-Encoding, X-CSRF-Token, Client-Agent, X-Fields, Content-Type, Authorization, X-Requested-With, X-HTTP-Method-Override, apikey, genkey')
        self.send_header("cache-control", "no-store")
        if content_type is not None:
            self.send_header('content-type', content_type)
        return super(ServerRequestHandler, self).end_headers()

def RunServerMultiThreaded(addr, port, embedded_kailite = None, embedded_kcpp_docs = None):
    global exitcounter, sslvalid
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    sock.bind((addr, port))
    numThreads = 20
    sock.listen(numThreads)

    class Thread(threading.Thread):
        def __init__(self, i):
            threading.Thread.__init__(self)
            self.i = i
            self.daemon = True
            self.start()

        def run(self):
            global exitcounter
            handler = ServerRequestHandler(addr, port, embedded_kailite, PROXY_URL, PROXY_PASSWORD)
            with http.server.HTTPServer((addr, port), handler, False) as self.httpd:
                try:
                    self.httpd.socket = sock
                    self.httpd.server_bind = self.server_close = lambda self: None
                    self.httpd.serve_forever()
                except (KeyboardInterrupt,SystemExit):
                    exitcounter = 999
                    self.httpd.server_close()
                    sys.exit(0)
                finally:
                    exitcounter = 999
                    self.httpd.server_close()
                    sys.exit(0)
        def stop(self):
            global exitcounter
            exitcounter = 999
            self.httpd.server_close()

    threadArr = []
    for i in range(numThreads):
        threadArr.append(Thread(i))
    while 1:
        try:
            time.sleep(10)
        except KeyboardInterrupt:
            global exitcounter
            exitcounter = 999
            for i in range(numThreads):
                threadArr[i].stop()
            sys.exit(0)

if __name__ == '__main__':
    embedded_kailite = None
    try:
        with open("klite.embd", mode='rb') as f:
            embedded_kailite = f.read()
            embedded_kailite = embedded_kailite
            print(f"Embedded Kobold Lite loaded: http://{HOST}:{PORT}")
    except Exception as e:
        print(e)
        print("Could not find Kobold Lite. Embedded Kobold Lite will not be available.")

    print(f'Using proxy {PROXY_URL}')
    print(f'OpenAI compatible endpoint: http://{HOST}:{PORT}/v1/')
    print(f'KoboldAI compatible endpoint: http://{HOST}:{PORT}/api/')

    asyncio.run(RunServerMultiThreaded(HOST, PORT, embedded_kailite))
```