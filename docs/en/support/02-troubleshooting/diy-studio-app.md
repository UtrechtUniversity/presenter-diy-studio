# 2.2 DIY Studio App problems

## The DIY Studio App does not start

Is a Command Prompt window visible? If so, check it for an error message and record or photograph the error. Then restart the PC.

If the app still does not start, check the window again and send the recorded error to Content & Digital.

## The DIY Studio App displays an error

### 101 — WebSocket connection closed

This error is not currently in use.

### 102 — No internet connection

Check that the black UTP cable is connected to the lower Ethernet port on the PC and that its other end is connected beneath the floor. If both connections are correct, the internet connection is unavailable, unless the cable itself is defective, and recording is not possible.

### 103 — Application window not created

This error is not currently in use.

### 104 — Can't connect to Ultimatte

Check that the red UTP cable is connected to the upper Ethernet port on the PC and that its other end is connected to the Blackmagic Ultimatte.

### 105 — Can't connect to Stream Deck

Check that the Stream Deck is connected correctly over USB; this cable runs to the Dell monitor. Then check whether the correct buttons are visible on the Stream Deck; see **The control panel does not work**. If they are not, either the Stream Deck software has not started or the correct plugin has not loaded. Contact Content & Digital.

### 106 — File encryption failed

Content & Digital must investigate this further. The PC can be switched off for now and will otherwise shut down automatically after 30 minutes. Report the problem to C&D.

### 107 — We could not detect any sound

Check the microphone cables. Then sign in as administrator and verify in Windows sound settings that the microphone input is enabled.

### 108 — The application has crashed

The application can generally still be used. Check that everything works correctly and report the crash to Content & Digital for further investigation.

### 201 — OBS: can't load the correct Scene Collection

The correct OBS Scene Collection is not installed.

1. Download the latest DIY Studio Software Package.
2. Sign in as administrator.
3. Start OBS.
4. Select **Scene Collection > Import** and import the scene collection from `Settings\OBS`.

### 202 — OBS: can't load the correct profile

The correct OBS profile is not installed.

1. Download the latest DIY Studio Software Package.
2. Sign in as administrator.
3. Start OBS.
4. Select **Profile > Import** and import the profile from `Settings\OBS`.

### 203 — OBS: connection closed

The connection to OBS was interrupted. OBS will restart automatically, after which the error should disappear. If it does not, press `F11` and wait. OBS will close if it is still running and then restart.

### 204 — OBS: can't set record folder

Sign in as administrator and check that `D:\Recordings\good`, `D:\Recordings\bad` and `D:\Recordings\temp` exist. Create any missing folders and restart the PC.

### 205 — OBS: recording not started

Press `F11` and wait. OBS will close if it is running and then restart. Try recording again. If it still fails, sign in as administrator, start OBS and try to start a recording manually to diagnose the problem.

### 206 — OBS: recording not stopped

There is no simple solution. To try to recover the recording, sign out and then sign in as administrator. Check whether the video is in `D:\Recordings\temp` and upload it with SURFfilesender. Restart the PC. If the problem continues, contact Content & Digital.

### 207 — OBS: failed to switch scene

Sign in as administrator and start OBS. It starts in the Windows system tray. Click the upward arrow on the right-hand side of the taskbar and then click the OBS icon.

![Screenshot: Taskbar > System Tray > OBS Studio](../../media/obs-tray-icon.png)

Check that the left-hand **Scenes** column contains:

- `Record-StaticBG`
- `Record-PP`
- `Record-Outro`
- `Program-DeskHeight`
- `Ultimatte-BG-Photo1`
- `Ultimatte-BG-Photo2`
- `Ultimatte-BG-Photo3`
- `Ultimatte-BG-Photo4`
- `Ultimatte-BG-Yellow`
- `Ultimatte-BG-Cream`
- `Ultimatte-BG-Blue`
- `Ultimatte-BG-Green`
- `NoPreview`

If so, restart the PC and try again. If these scenes are absent, reinstall the Scene Collection. If the problem continues, contact Content & Digital.

### 208 — Unable to connect to OBS

See **203 — OBS: connection closed**.

### 209 — OBS: the recording stopped unexpectedly

Press `F11` and wait. OBS will close if it is still running and then restart. Try recording again. If the same problem occurs, restart the PC.

### 301 — Not enough disk space available

The recording SSD is too full. Sign in as administrator, open `D:\Recordings\backups` and empty it to free disk space.

### 302 — MKV file not found

This error is not currently in use.

### 303 — Remuxing failed

This error is not currently in use.

Check Command Prompt for a message containing more information. Photograph it and contact Content & Digital. The recording may still be recovered by signing in as administrator and locating it in `D:\Recordings\temp`. Upload the file with SURFfilesender.

### 304 — Can't open folder

This suggests a problem with one of the PC's two SSDs. Restart the PC and check whether the problem remains.

### 305 — Can't create folder

See **304**.

### 306 — Video couldn't be moved to its destination

Sign in as administrator and check that `D:\Recordings\good`, `D:\Recordings\bad` and `D:\Recordings\temp` exist. Create any missing folders and restart the PC.

### 307 — File copy failed

Sign in as administrator and check that `C:\Software\Mediaproducties-DIY-Studio-App\assets\html` contains:

- `pause-button.svg`
- `play-button.svg`
- `videoplayer.html`

If they are missing, there is a problem with the GitHub repository. Contact Content & Digital.

If the files are present, copy them manually to `D:\Recordings`.

### 401 — OneDrive: something went wrong when logging in

The app could not sign in to OneDrive. Check the internet connection and try again.

### 402 — OneDrive: can't create upload session

The app cannot start an upload session for the recorded video. Check the internet connection. If it still fails, sign in as administrator and send the recordings in `D:\Recordings\good` using SURFfilesender.

### 403 — You don't have enough free space in your OneDrive

The signed-in user's OneDrive is too full. Free sufficient space before uploading videos.

### 404 — You are not logged in to OneDrive

The user is no longer signed in to OneDrive. Open the **Sign in** tab and sign in. If the app says the user is already signed in, sign out and sign in again.

### 405 — Error while downloading PowerPoint presentation

Sign in as administrator and check that `C:\` has sufficient free space. If the error continues, sign out of OneDrive in the app and sign in again.

### 406 — Upload of video to OneDrive failed

Check that the user still has enough free OneDrive space and check the internet connection. If the upload still fails, sign in as administrator and send the recordings in `D:\Recordings\good` using SURFfilesender.

### 407 — Failed to obtain permission to use your OneDrive

Sign out of the application and try signing in again. The user must grant the DIY Studio App access to their OneDrive. If this is no longer possible, ask the user to sign in to `https://myapplications.microsoft.com/` on another device, find the DIY Studio App under **My Apps** and grant permission.

### 408 — Failed to obtain data from OneDrive

Sign out of the application and sign in again. Restart the PC if the problem continues.

### 501 — Unable to open PowerPoint

Restart the PC and try again. If it still fails, sign in as administrator, start PowerPoint manually and verify that it starts correctly and is activated using Arthur Verbeek's standard account.

### 502 — Unable to open PowerPoint presentation

Restart the PC and try again.
