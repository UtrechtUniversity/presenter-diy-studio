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

The console window may also contain useful diagnostic information. Close the user interface with `Alt+F4` to view it. If the window is minimised, right-click it and select **Restore**.

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
