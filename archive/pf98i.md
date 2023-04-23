# Debugging voldy's web UI for absolute fools

I'm retarded when it comes to web development, so it took me a while to figure out how to launch [voldy's UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui) in debug mode. To make sure no anon will ever have to ask again, here's a (hopefully) idiot-proof guide.

## Run webui at least once

By executing `launch.py` directly, we're skipping all the setup, so you'll have to have run the `webui.bat` or `webui.sh` script at least once. If you followed the installation instructions on the [readme](https://github.com/AUTOMATIC1111/stable-diffusion-webui#installation-and-running), you're already good to go.

## Get VS Code

If you don't have VS Code already, get it [here](https://code.visualstudio.com/).

## Open the repo
Open VS Code and open the folder containing the web UI repository either by dragging it onto the window or using the action.

## Set up the launch config
Hit `Ctrl + Shift + D` to open the Run & Debug sidebar and select `create launch.json file`. It'll ask you what kind of launch config you want - pick whatever, because we'll be replacing it anyway.
Once you have the editor open, paste this in and save the file:

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "WebUI Launcher",
            "type": "python",
            "request": "launch",
            "program": "launch.py",
            "console": "integratedTerminal",
            "justMyCode": true,
            "args": []
        }
    ]
}
```

Don't worry about the changes in the repo being overwritten with the next pull, the folder the launch config is in isn't being tracked.

## Run and debug

Just hit `F5` and you're done. By default, VS Code will break at any breakpoints or errors, so if you want to see if it worked, add a breakpoint in `launch.py` before running and watch the debugger stop.

## More stuff

If you want to add arguments like `--listen` or `--no-half-vae`, put them in the `args`-parameter of the launch config, like so:
`"args": ["--listen","--no-half-vae"]`
