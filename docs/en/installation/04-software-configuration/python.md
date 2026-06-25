- Sign in as **User**, not **Setup**. Install Python without administrator rights, using the default settings, in:

  ```text
  C:\Users\User\AppData\Local\Programs\Python\Python313
  ```

  Click `Install Now`.

- At the end, select `Disable path length limit` to remove the `MAX_PATH` limit.
- Add these two directories to the system `PATH` variable:

  ```text
  C:\Users\User\AppData\Local\Programs\Python\Python313
  C:\Users\User\AppData\Local\Programs\Python\Python313\Scripts
  ```

  To do this:

  - Right-click the Windows logo on the taskbar.
  - Select *System*.
  - Select `Advanced system settings`.
  - Select `Environment Variables`.
  - Under `System variables`, select `Path`.
  - Click `Edit... > New`.
  - Add the first directory, click `New` again and add the second.
  - Click `OK`.

![Screenshot: Environment Variables](../../media/python-env-vars.png)
