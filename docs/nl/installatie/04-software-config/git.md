Git is een systeem voor het beheren van software. Hiermee kunnen we de DIY Studio App downloaden en updaten. Om dat te kunnen doen moeten we authenticeren via het SSH-protocol. We maken een public/private key pair aan: de private key blijft op de computer in de DIY-studio, en de public key voegen we toe op GitHub aan de repository van de app. Daarmee krijgen we toegang tot de broncode van de app.

> Zodra de repository public wordt zijn alleen nog stappen 1 en 2 nodig en kunnen stappen 3 t/m 11 worden overgeslagen.

1. Installeer Git met alle default settings.

2. Open een Command Prompt (Windowstoets, type `cmd`, druk op Enter) en voer uit:

   ```
   git config --global user.name "Arthur Verbeek"
   git config --global user.email arthurverbeek88@gmail.com
   ```

3. Open `Git Bash` en voer uit:

   ```
   ssh-keygen -t ed25519 -C "arthurverbeek88@gmail.com"
   ```

4. Druk driemaal op Enter.

5. Open PowerShell met administrator-rechten en voer uit (let op de spatie voor `-StartupType`):

   ```
   Get-Service -Name ssh-agent | Set-Service -StartupType Automatic
   ```

6. Druk op Enter en voer daarna uit:

   ```
   Start-Service ssh-agent
   ```

7. Ga terug naar Git Bash en voer uit:

   ```
   eval "$(ssh-agent -s)"
   ```

8. Voer daarna uit:

   ```
   ssh-add ~/.ssh/id_ed25519
   ```

9. Ga op een andere computer naar `https://github.com/UtrechtUniversity/diy-studio-app`. Kies `Settings > Deploy keys > Add deploy key` en vul als *Title* in:

   ```
   Presenter DIY-studio Bibliotheek USP
   ```

10. Open `C:\Users\User\.ssh\id_ed25519.pub` in een teksteditor en kopieer de inhoud naar het *Key*-veld op GitHub. `Allow write access` moet uit blijven staan.

11. Test tenslotte vanuit Git Bash:

   ```
   ssh -T git@github.com
   ```
