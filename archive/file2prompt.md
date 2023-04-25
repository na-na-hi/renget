Ensure you are running webui with the API enabled (`--api` in your `webui-user.bat`)
Saves files to a folder called `output` in the working directory
You can specify a filename per entry (see example 'hello') or uses `{time} {prompt} {seed}` formatting if not specified

Script, save as `file2prompt.mjs` or something

```js
import fs from "fs"; // for loading the config file, creating output dir, saving file
import http from "http"; // for calling the webui api

// If you dont run on the standard port
const WEBUI_PORT = 7860;

// Make HTTP POST request to webui API
function post({ body, ...options }) {
	return new Promise((resolve, reject) => {
		const req = http.request(
			{
				method: "POST",
				...options,
			},
			(res) => {
				const chunks = [];
				res.on("data", (data) => chunks.push(data));
				res.on("end", () => {
					let resBody = Buffer.concat(chunks);
					switch (res.headers["content-type"]) {
						case "application/json":
							resBody = JSON.parse(resBody);
							break;
					}
					resolve(resBody);
				});
			}
		);
		req.on("error", reject);
		if (body) {
			req.write(body);
		}
		req.end();
	});
}

// Ensure we have a config
if (!fs.existsSync("./config.json")) {
	throw new Error("config.json missing");
}

// Load the config
const config = JSON.parse(fs.readFileSync("./config.json"));
console.log(config.length, "images to generate");

// Ensure output directory exists
if (!fs.existsSync("./output")) {
	fs.mkdirSync("./output");
}

// Process each config entry
for (let i = 0; i < config.length; i++) {
	const c = config[i];

	console.log(`${i + 1}/${config.length} - ${c.prompt}`);

	let filename = c.filename;
	delete c.filename;

	// Make the request to t he txt2img API
	const res = await post({
		hostname: "127.0.0.1",
		port: WEBUI_PORT,
		path: "/sdapi/v1/txt2img",
		body: JSON.stringify(c),
		headers: {
			"content-type": "application/json",
		},
	});

	// Parse response
	const info = JSON.parse(res.info);
	if (!info || !info.job_timestamp) {
		console.log(res);
		throw new Error("Unexpected response from API");
	}

   // Ensure we have a filename
	if (!filename) {
		filename = `${info.job_timestamp} ${info.prompt.substr(0, 50)} (${info.seed}).png`;
	} else if (!filename.endsWith(".png")) {
		filename += ".png";
	}

   // Save
	fs.writeFileSync("./output/" + filename, res.images[0], "base64");
}

console.log("Done");
```

Create `config.json` next to the `mjs` file, example:
```json
[
   {
      "filename": "hello",
      "prompt": "1girl solo chibi",
      "negative_prompt": "big ears",
      "enable_hr": false,
      "denoising_strength": 0,
      "firstphase_width": 0,
      "firstphase_height": 0,
      "seed": -1,
      "steps": 10,
      "cfg_scale": 7,
      "width": 512,
      "height": 512,
      "sampler_index": "DPM++ 2M Karras"
   },
   {
      "prompt": "1girl solo",
      "negative_prompt": "something",
      "enable_hr": true,
      "denoising_strength": 0.7,
      "firstphase_width": 0,
      "firstphase_height": 0,
      "seed": -1,
      "steps": 10,
      "cfg_scale": 7,
      "width": 1024,
      "height": 768,
      "sampler_index": "DPM++ 2M Karras"
   }
]
```

Run with `node file2prompt.mjs`

---

API txt2img schema:
```json
{
  "enable_hr": false,
  "denoising_strength": 0,
  "firstphase_width": 0,
  "firstphase_height": 0,
  "prompt": "",
  "styles": [
    "string"
  ],
  "seed": -1,
  "subseed": -1,
  "subseed_strength": 0,
  "seed_resize_from_h": -1,
  "seed_resize_from_w": -1,
  "batch_size": 1,
  "n_iter": 1,
  "steps": 50,
  "cfg_scale": 7,
  "width": 512,
  "height": 512,
  "restore_faces": false,
  "tiling": false,
  "negative_prompt": "string",
  "eta": 0,
  "s_churn": 0,
  "s_tmax": 0,
  "s_tmin": 0,
  "s_noise": 1,
  "override_settings": {},
  "sampler_index": "Euler"
}
```