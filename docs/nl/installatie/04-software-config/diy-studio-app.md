De DIY Studio App vormt op softwaregebied het hart van de studio. Het toont de gebruikersinterface waarin de gebruiker van de studio kan kiezen uit twee type video's: een video met achtergrond naar keuze (waarin de presentator groot in beeld is), of een PowerPointvideo, waarbij de presentator rechtsonder in de hoek staat, met een PowerPointpresentatie op de achtergrond.

De app verzorgt de communicatie met de onderliggende opnamesoftware (OBS) en verwerkt de signalen van het fysieke knoppenpaneel (Stream Deck). Het communiceert met de Blackmagic Ultimatte en Microsoft PowerPoint, versleutelt backups en biedt integratie met OneDrive voor het downloaden van bestanden en uploaden van video's.

## App registreren in Azure Portal
Allereerst moet de afdeling ITS de DIY Studio App registreren in Azure Portal en een client_id en een tenant_id aanleveren. De app dient als volgt te worden geregistreerd:
  
  * Mobile and Desktop application
  
  * Redirect URI: [http://localhost](http://localhost/ "http://localhost")
  
  Voor gedetailleerdere instructies, zie: [Register an application with the Microsoft identity platform - Microsoft Graph | Microsoft Learn](https://learn.microsoft.com/en-us/graph/auth-register-app-v2)

## Installatie
1. Zorg ervoor dat op de PC waarop deze app draait de fonts **Open Sans** en **Merriweather** (beide in alle varianten) geïnstalleerd zijn. Rechtermuisknop > *Install*.

2. Open Windows PowerShell (druk op de Windowstoets, typ 'powershell' en klik de juiste app aan) en voer het volgende uit om de app vanuit GitHub te downloaden:
  
    ```
    cd C:\Software
    
    git clone git@github.com:UtrechtUniversity/diy-studio-app.git
    ```

3. Maak een virtuele Python-omgeving (venv) waarin alle third party libraries die de app gebruikt worden geïnstalleerd. Maak eerst een directory aan voor deze venv, waarbij je 2026-09 vervangt door het huidige jaar en de huidige maand, en py3147 door de exacte Pythonversie die is geïnstalleerd (in dit geval: 3.14.7).

    ```
    mkdir C:\Python\production_2026-09_py3147
    ```

4. Controleer waar Python geinstalleerd is en sla dit op in een variabele:

    ```
    pymanager list --one --format=exe 3.14
    
    $py = "<HIER HET GEVONDEN PAD>"
    ```

5. Creëer de nieuwe venv vanuit de python.exe uit de output hierboven, en sla de nieuwe python.exe op in een variabele:

    ```
    & $py -m venv C:\Python\production_2026-09_py3147\venv
    
    $venvPy = "C:\Python\production_2026-09_py3147\venv\Scripts\python.exe"
    ```

6. Kopieer requirements.txt naar de productiemap zodat we later kunnen achterhalen wat er geïnstalleerd is:

    ```
    Copy-Item `
    C:\Software\diy-studio-app\requirements.txt `
    C:\Python\production_2026-09_py3147\requirements.txt
    ```

7. Installeer nu de vereiste libraries:

    ```
    & $venvPy -m pip install `
    -r C:\Python\production_2026-09_py3147\requirements.txt
    ```

8. Run de post-installer van pywin32:

    ```
    $venvPy pywin32_postinstall.py -install
    ```

9. Sla de Pythonversie en lijst met geïnstalleerde packages op:

    ```
    & $venvPy --version > C:\Python\production_2026-09_py3147\python-version.txt
    
    & $venvPy -m pip freeze --all `
    > C:\Python\production_2026-09_py3147\requirements-actual.txt
    ```

10. Pas `C:\Software\diy-studio-startup-script.bat aan`, door op de laatste regel de juiste locatie van Python in de virtuele omgeving in te vullen:

    ```
    C:\Python\production_2026-09_py3147\venv\Scripts\python.exe
    ```

11. Kopieer het configuratiebestand uit de package op de server:
  
    ```
    Settings\DIY Studio App - USP Bibliotheek\config.cfg
    ```
  
naar:
  
    ```
    C:\Software\diy-studio-app\config\
    ```
  
Open het bestand met Notepad en controleer of de juiste gegevens staan ingevuld bij client_id en tenant_id onder het kopje [azure].
