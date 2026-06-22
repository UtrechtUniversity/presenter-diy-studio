De DIY Studio App vormt op softwaregebied het hart van de studio. Het toont de gebruikersinterface waarin de gebruiker van de studio kan kiezen uit twee type video's: een video met achtergrond naar keuze (waarin de presentator groot in beeld is), of een PowerPointvideo, waarbij de presentator rechtsonder in de hoek staat, met een PowerPointpresentatie op de achtergrond.

De app verzorgt de communicatie met de onderliggende opnamesoftware (OBS) en verwerkt de signalen van het fysieke knoppenpaneel (Stream Deck). Het communiceert met de Blackmagic Ultimatte en Microsoft PowerPoint, versleutelt backups en biedt integratie met OneDrive voor het downloaden van bestanden en uploaden van video's.

* Allereerst moet de afdeling ITS de DIY Studio App registreren in Azure Portal en een client_id en een tenant_id aanleveren. De app dient als volgt te worden geregistreerd:
  
  * Mobile and Desktop application
  
  * Redirect URI: [http://localhost](http://localhost/ "http://localhost")
  
  Voor gedetailleerdere instructies, zie: [Register an application with the Microsoft identity platform - Microsoft Graph | Microsoft Learn](https://learn.microsoft.com/en-us/graph/auth-register-app-v2)
- Zorg ervoor dat op de PC waarop deze app draait de fonts **Open Sans** en **Merriweather** (beide in alle varianten) geïnstalleerd zijn. Rechtermuisknop > *Install*.

## Installatie

- Open een Command Prompt (druk op de Windowstoets, typ 'cmd' en druk op Enter) en voer het volgende uit:
  
  ```
  cd C:\Software
  git clone git@github.com:UtrechtUniversity/diy-studio-app.git
  cd diy-studio-app
  pip install -r requirements.txt
  ```
  
  Als dit laatste niet werkt, gebruik dan:
  
  ```
  python -m pip install -r requirements.txt
  ```

- Kopieer het configuratiebestand uit de package op de server:
  
  ```
    Settings\DIY Studio App - USP Bibliotheek\config.cfg
  ```
  
  naar:
  
  ```
  C:\Software\diy-studio-app\config\
  ```
  
  Open het bestand met Notepad en controleer of de juiste gegevens staan ingevuld bij client_id en tenant_id onder het kopje [azure].

- Open een Command Prompt met administrator-rechten: druk op de Windowstoets, typ:
  
  ```
  cmd  
  ```
  
  Druk op enter. Klik dan met de rechtermuisknop op het icoon en kies:
  
  ```
  Run as administrator
  ```
  
  Typ vervolgens:
  
  ```
  cd C:\Users\User\AppData\Local\Programs\Python\Python313\Scripts
  ```
  
  En dan:
  
  ```
  python pywin32_postinstall.py -install
  ```
