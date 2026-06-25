The DIY Studio App is the software at the heart of the studio. Its user interface lets visitors choose between two video types: a video with a selected background, with the presenter shown large on screen, or a PowerPoint video, with the presenter in the bottom-right corner and a PowerPoint presentation as the background.

The app communicates with the underlying recording software, OBS, and processes input from the physical Stream Deck control panel. It communicates with the Blackmagic Ultimatte and Microsoft PowerPoint, encrypts backups and integrates with OneDrive to download files and upload videos.

- ITS must first register the DIY Studio App in Azure Portal and provide a `client_id` and `tenant_id`. Register it as:
  - Mobile and Desktop application
  - Redirect URI: [http://localhost](http://localhost/ "http://localhost")

  For detailed instructions, see [Register an application with the Microsoft identity platform](https://learn.microsoft.com/en-us/graph/auth-register-app-v2).

- Install the **Open Sans** and **Merriweather** fonts, including all variants, on the PC. Right-click each font and select *Install*.

## Installation

- Open Command Prompt by pressing the Windows key, typing `cmd` and pressing Enter. Run:

  ```bat
  cd C:\Software
  git clone git@github.com:UtrechtUniversity/diy-studio-app.git
  cd diy-studio-app
  pip install -r requirements.txt
  ```

  If the final command does not work, use:

  ```bat
  python -m pip install -r requirements.txt
  ```

- Copy this configuration file from the package on the server:

  ```text
  Settings\DIY Studio App - USP Bibliotheek\config.cfg
  ```

  to:

  ```text
  C:\Software\diy-studio-app\config\
  ```

  Open the file in Notepad and verify the `client_id` and `tenant_id` values under `[azure]`.

- Open Command Prompt as administrator. Press the Windows key, type `cmd`, right-click its icon and select `Run as administrator`. Then run:

  ```bat
  cd C:\Users\User\AppData\Local\Programs\Python\Python313\Scripts
  python pywin32_postinstall.py -install
  ```
