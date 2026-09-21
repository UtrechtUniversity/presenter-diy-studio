## Python 3.14

- Sign in as **User**, not **Setup**.

- Open **Microsoft Store**. If the Windows desktop interface is disabled: open Task Manager, click `Run new task` and run `ms-windows-store://home`.

- Install **Python Install Manager**.

- If you get asked to set `LongPathsEnabled` to `1`, accept this and enter the administrator password when prompted.

- Add these three directories to the system `PATH` variable:
  
  ```
    C:\Users\User\AppData\Local\Python\bin\
    C:\Users\User\AppData\Local\Python\pythoncore-3.14-64\
    C:\Users\User\AppData\Local\Python\pythoncore-3.14-64\Scripts
  ```
  
  To do this:
  
  - Right-click the Windows logo on the taskbar.
  - Select *System*.
  - Select `Advanced system settings`.
  - Select `Environment Variables`.
  - Under `System variables`, select `Path`.
  - Click `Edit... > New`.
  - Add the first directory, click `New` again and add the second directory. Repeat for the third directory.
  - Click `OK`.

![Screenshot: Environment Variables](../../media/python-env-vars.png)

## Python 3.13

- Sign in as **User**, not **Setup**. Install Python without administrator rights, using the default settings, in:
  
  ```
  C:\Users\User\AppData\Local\Programs\Python\Python313
  ```
  
  Click `Install Now`.

- At the end, select `Disable path length limit` to remove the `MAX_PATH` limit.

- Add these two directories to the system `PATH` variable:
  
  ```
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
