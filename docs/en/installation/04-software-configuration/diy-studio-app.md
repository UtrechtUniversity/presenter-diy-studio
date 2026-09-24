The DIY Studio App is the software at the heart of the studio. Its user interface lets visitors choose between two video types: a video with a selected background, with the presenter shown large on screen, or a PowerPoint video, with the presenter in the bottom-right corner and a PowerPoint presentation as the background.

The app communicates with the underlying recording software, OBS, and processes input from the physical Stream Deck control panel. It communicates with the Blackmagic Ultimatte and Microsoft PowerPoint, encrypts backups and integrates with OneDrive to download files and upload videos.

## Register the app in Azure Portal

ITS must first register the DIY Studio App in Azure Portal and provide a `client_id` and `tenant_id`. Register it as:

- Mobile and Desktop application
- Redirect URI: [http://localhost](http://localhost/ "http://localhost")

For detailed instructions, see [Register an application with the Microsoft identity platform](https://learn.microsoft.com/en-us/graph/auth-register-app-v2).

## Installation

1. Install the **Open Sans** and **Merriweather** fonts, including all variants, on the PC that will run the app. Right-click each font and select *Install*.

2. Open Windows PowerShell by pressing the Windows key, typing `powershell` and selecting the correct application. Run the following commands to download the app from GitHub:

    ```
    cd C:\Software

    git clone git@github.com:UtrechtUniversity/diy-studio-app.git
    ```

3. Create a Python virtual environment (venv) for all the third-party libraries used by the app. First create a directory for it, replacing `2026-09` with the current year and month, and `py3147` with the exact Python version installed (in this example, 3.14.7).

    ```
    mkdir C:\Python\production_2026-09_py3147
    ```

4. Find the Python installation path and store it in a variable:

    ```
    pymanager list --one --format=exe 3.14

    $py = "<ENTER THE PATH FOUND ABOVE>"
    ```

5. Create the new virtual environment using the `python.exe` found above, then store the path to the new `python.exe` in a variable:

    ```
    & $py -m venv C:\Python\production_2026-09_py3147\venv

    $venvPy = "C:\Python\production_2026-09_py3147\venv\Scripts\python.exe"
    ```

6. Copy `requirements.txt` to the production directory so that the installation requirements can be checked later:

    ```
    Copy-Item `
    C:\Software\diy-studio-app\requirements.txt `
    C:\Python\production_2026-09_py3147\requirements.txt
    ```

7. Install the required libraries:

    ```
    & $venvPy -m pip install `
    -r C:\Python\production_2026-09_py3147\requirements.txt
    ```

8. Run the pywin32 post-installation script:

    ```
    $venvPy pywin32_postinstall.py -install
    ```

9. Save the Python version and the list of installed packages:

    ```
    & $venvPy --version > C:\Python\production_2026-09_py3147\python-version.txt

    & $venvPy -m pip freeze --all `
    > C:\Python\production_2026-09_py3147\requirements-actual.txt
    ```

10. Edit the last line of `C:\Software\diy-studio-startup-script.bat` to use the correct path to Python in the virtual environment:

    ```
    C:\Python\production_2026-09_py3147\venv\Scripts\python.exe
    ```

11. Copy this configuration file from the package on the server:

    ```
    Settings\DIY Studio App - USP Bibliotheek\config.cfg
    ```

    to:

    ```
    C:\Software\diy-studio-app\config\
    ```

    Open the file in Notepad and verify the `client_id` and `tenant_id` values under `[azure]`.
