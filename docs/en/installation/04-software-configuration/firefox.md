Firefox always runs behind the DIY Studio App window. It is used to sign in to Microsoft, play videos in a video player, including tutorial videos and user recordings, and display the DIY Studio App loading screen.

- Sign in as **User** and start the Firefox installer. When prompted for the administrator password, click `"No"`.
- Start Firefox and set it as the default browser. Windows Settings will open; beside `Make Firefox your default browser`, click `Set default`.
- Drag the Firefox window to the same monitor which will show the DIY Studio App (the monitor on the right).
- Configure Firefox as follows (and confirm input of new values with `Enter`):
  - Enter `about:config` in the address bar.
  - Accept the security warning.
  - Enter `disableResetPrompt`, click the plus icon to add it and ensure `boolean` is selected.
  - Find `browser.link.open_newwindow.restriction` and double-click it to change the value to `0`.
  - Find `browser.link.open_newwindow` and double-click it to change the value to `1`.
  - Find `browser.sessionstore.resume_from_crash` and double-click it to change the value to `false`.
  - Find `toolkit.startup.max_resumed_crashes` and double-click it to change the value to `-1`.
- Then:
  - Open the hamburger menu at the top right.
  - Select *Settings*.
  - Under *General*, click `Make default`, then `Set default` in Windows Settings if this has not already been done.
  - Open `Home and startup`. Under *Startup*, clear `Open Firefox automatically when your computer starts up`.
  - Open `Privacy and security`. Under *History*, set `Firefox will` to `Never remember history`.
  - Open `Passwords and autofill`. Under *Passwords*, clear `Ask to save passwords`.
  - Restart Firefox.
  - Right-click the bookmarks toolbar and select `Bookmarks Toolbar > Never Show`.

![Screenshot: right-click > Bookmarks Toolbar > Never Show](../../media/firefox-bookmarks.png)
