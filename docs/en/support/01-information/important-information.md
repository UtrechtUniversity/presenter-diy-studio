## Moving the mouse to another display

By default, the mouse is restricted to display 1. Hold `Ctrl` to move it to another display.

## Signing in as administrator

The computer automatically signs in to a standard Windows user account, where the Windows interface is hidden. To change the system, sign in as administrator:

1. Press `Ctrl+Alt+Del`.
2. Select **Switch user**.

## Important DIY Studio App keyboard shortcuts

The following functions are available in the DIY Studio App:

- `F1`: displays a black information bar at the top of the screen showing:
  - application version
  - OBS connection status
  - Stream Deck connection status
  - OneDrive connection status
  - internet connection status
- `F2`: emails the application log to C&D, Wouter
- `F5`: adds a button to the video-type selection page for recording with the green screen visible
- `F12`: closes and restarts OBS

The console window may also contain useful diagnostic information. By default this is minimized on the left screen, bottom left corner. Right-click it and select **Restore**.

To restart the application, first close this console window. Press `Ctrl+Shift+Esc`, select **Run new task** in Task Manager, enter `cmd` and press Enter. Then run:

```
cd C:\Software\Mediaproducties-DIY-Studio-App
python app.py
```

## Restarting the computer

Restarting the computer resolves many software problems. If an applicable app error appears, it will include a **Restart the PC** button.

To restart manually:

1. Press `Ctrl+Alt+Del`.
2. Click the power icon in the bottom-right corner.
3. Select **Shut down**.

## Backups

The DIY Studio App automatically retains an encrypted backup of each video for at least seven days. Older backups are deleted when the application starts. Backups are encrypted using a public key and can be decrypted using a private key. Ask Content & Digital for the existing key if one is already in use. Otherwise, create a new key pair.

Use the command-line interface to create key pairs and decrypt files:

- Sign in as administrator.
- Press the Windows key, type `cmd` and press Enter.
- Run:

  ```
  cd C:\Software\diy-studio-app\
  python encryption.py
  ```

- Select option 1 to create a key pair.
- Select option 2 to decrypt files.

## Video signal routing

OBS runs in Studio Mode, which provides two monitors: Preview and Program. If the user chooses to record with a background of their choice, the ‘Record-StaticBG’ scene is loaded in the Program monitor. The scene corresponding to the selected background is set as the Preview. OBS sends the image from the Preview monitor to the output of the Blackmagic DeckLink in the PC. This signal then goes to the Background input of the Blackmagic Ultimatte. In the Ultimatte, the camera image and background are combined, with the green screen removed. This image is then sent back to the DeckLink input and used for the recording, including audio.

If the user chooses to record a PowerPoint presentation, this process is bypassed. The Ultimatte is instructed to output the camera image with the green screen still in place; the camera feed is therefore passed through directly to the DeckLink input. The ‘Record-PP’ scene is loaded in OBS’s Program monitor, and three filters are then enabled on the DeckLink Source: Chroma Key, Crop and Colour Correction. In other words, OBS now handles the green-screen keying. OBS then places the teleprompter image behind it (that is, the PowerPoint slide show).
