:: This is a complete "one-step" install for double retards that fuck up voldys guide.
:: https://rentry.org/3okso
:: This is a .bat file, probably NOT a virus.
:: If there isn't a step that tells you to do a thing dont fucking do it

:: Step 1: Create a new folder somewhere on your computer with LOTS of space
::	   the Program Files directories or Windows directories are off limits
::
:: Step 2: Save this file or text to the folder you created as a .bat file
::
:: Step 3: Do not run this .bat file from elsewhere or create a shortcut to this bat file.
::	   open explorer to your folder and then run this .bat file
::	   This will take a while.
::
:: Step 4: go to https://cyberes.github.io/stable-diffusion-models/
::     manually download models and put into stable-diffusion-webui\models folder
::	   then restart this .bat or run webui-user.bat
::
:: Uninstall: delete the folder and thats 100% it


curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe
.\Miniconda3-latest-Windows-x86_64.exe /InstallationType=JustMe /AddToPath=0 /RegisterPython=0 /NoRegistry=1 /NoScripts=0 /NoShortcuts=1 /S /D=%CD%\conda_install

CALL conda_install\condabin\conda.bat init cmd.exe
CALL conda_install\condabin\activate.bat
CALL conda install --freeze-installed --yes python
CALL conda install --freeze-installed --yes git
pip install --upgrade pip
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
CALL webui-user.bat
cmd /c http://127.0.0.1:7860
