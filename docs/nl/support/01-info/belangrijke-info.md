## De muis naar een ander scherm verplaatsen

Standaard wordt de muis begrensd tot scherm 1. Houd `Ctrl` ingedrukt om de muis te kunnen verplaatsen naar een ander scherm.

## Inloggen als administrator op de computer

De computer logt automatisch in met een standaard gebruikersaccount in Windows. Er is dan geen interface van Windows te zien. Als je iets wil wijzigen aan het systeem dan dien je in te loggen als administrator.

1. Druk op `Ctrl+Alt+Del`.
2. Kies **Switch user**.

## Belangrijke sneltoetsen in de DIY Studio App

In de DIY Studio App kun je de volgende functies gebruiken:

- `F1`: er verschijnt bovenin beeld een zwarte balk met informatie:
  - versie van de applicatie
  - status verbinding met OBS
  - status verbinding met Stream Deck
  - status verbinding met OneDrive
  - status verbinding met internet
- `F2`: hiermee wordt het logboek van de app gemaild naar C&D (Wouter)
- `F5`: hiermee verschijnt een knop op de videotypekeuzepagina waarmee kan worden opgenomen met de greenscreen in beeld
- `F12`: hiermee wordt OBS afgesloten en opnieuw opgestart

Daarnaast kan er bruikbare informatie over de werking van de applicatie staan in het consolevenster dat te zien is door de gebruikersinterface af te sluiten met `Alt+F4`. Indien het venster geminimaliseerd is, klik er dan met de rechtermuisknop op en kies **Restore**.

Om de app hierna opnieuw op te kunnen starten moet je dit consolevenster sluiten. Open een nieuw venster door `Ctrl+Shift+Esc` in te drukken en in de Task Manager voor **Run new task** te kiezen. Type `cmd` en druk op Enter. Type daarna:

```bat
cd C:\Software\Mediaproducties-DIY-Studio-App
python app.py
```

## De computer herstarten

In veel gevallen zal met het herstarten van de computer een softwareprobleem vanzelf opgelost zijn. Als er een foutmelding in de app verschijnt waarbij dit van toepassing is, dan zal daar een knop bij zitten met **Herstart de PC**.

Handmatig de PC herstarten doe je als volgt:

1. Druk op `Ctrl+Alt+Del`.
2. Klik helemaal rechtsonderin op het aan/uit-icoon.
3. Kies **Shut down**.

## Backups

De DIY Studio App bewaart automatisch een backup van elke video, minimaal 7 dagen lang. Hierna zullen backups worden verwijderd zodra de applicatie opstart. Deze backups worden versleuteld met een public key, en kunnen ontsleuteld worden met een private key. Indien er al een key in gebruik is, dan is deze op te vragen bij Content&Digital. Als er nog geen keypair is dan moet deze worden aangemaakt.

Er is een command-line interface voor het aanmaken van keypairs en het ontsleutelen van bestanden. Deze is als volgt te openen:

- Log in als Administrator.
- Druk op de Windows-toets, type `cmd` en druk op Enter.
- Typ:

```bat
cd C:\Software\diy-studio-app\
python encryption.py
```

- Kies optie 1 voor het aanmaken van een keypair.
- Kies optie 2 voor het ontsleutelen van bestanden.
