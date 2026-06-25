Git is a source-control system used to download and update the DIY Studio App. Access is authenticated over SSH. Create a public/private key pair: the private key remains on the DIY Studio computer and the public key is added to the app repository on GitHub.

> Once the repository is public, only steps 1 and 2 are required and steps 3–11 can be skipped.

1. Install Git using all default settings.
2. Open Command Prompt by pressing the Windows key, typing `cmd` and pressing Enter. Run:

   ```
   git config --global user.name "Arthur Verbeek"
   git config --global user.email arthurverbeek88@gmail.com
   ```

3. Open `Git Bash` and run:

   ```
   ssh-keygen -t ed25519 -C "arthurverbeek88@gmail.com"
   ```

4. Press Enter three times.
5. Open PowerShell as administrator and run; note the space before `-StartupType`:

   ```
   Get-Service -Name ssh-agent | Set-Service -StartupType Automatic
   ```

6. Press Enter and run:

   ```
   Start-Service ssh-agent
   ```

7. Return to Git Bash and run:

   ```
   eval "$(ssh-agent -s)"
   ```

8. Then run:

   ```
   ssh-add ~/.ssh/id_ed25519
   ```

9. On another computer, open `https://github.com/UtrechtUniversity/diy-studio-app`. Select `Settings > Deploy keys > Add deploy key` and enter this *Title*:

   ```
   Presenter DIY-studio Bibliotheek USP
   ```

10. Open `C:\Users\User\.ssh\id_ed25519.pub` in a text editor and copy its contents into the GitHub *Key* field. Leave `Allow write access` cleared.
11. Finally, test from Git Bash:

   ```
   ssh -T git@github.com
   ```
