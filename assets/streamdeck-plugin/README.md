# DIY-Studio Stream Deck Plugin
Plugin voor de Elgato Stream Deck waarmee de DIY Studio App bediend kan worden, met de volgende functies:
* Start/stop knop om opnames mee te starten/stoppen
* Navigatieknoppen om door PowerPoint-presentaties te navigeren
* EN/NL knop om de taal van de interface te wijzigen van Engels naar Nederlands en terug

De plugin stuurt via een Websocketverbinding een bericht naar de DIY Studio App wanneer een gebruiker een knop indrukt op de Stream Deck. Als de gebruiker op de Record-knop drukt en de plugin hierna een bevestiging krijgt vanuit de DIY Studio App dat de opname daadwerkelijk is gestart, dan verandert de Record-knop in een Stop-knop, en vice versa. Wanneer bevestigd wordt dat de taal veranderd is, dan verandert de EN-knop in een NL-knop, etc.

## Installeren:
Plaats de map

    nl.uu.diy-studio.sdPlugin

in

    C:\Users\User\AppData\Roaming\Elgato\StreamDeck\Plugins

en herstart de Stream Deck software. In het rechterpaneel staat nu een categorie "DIY Studio" met de volgende acties die aan een knop kunnen worden toegewezen:
* Record-stop toggle
* Previous slide
* Next slide
* Language toggle

## Copyright and license
Copyright © 2026 Utrecht University
This software is licensed under the European Union Public Licence v1.2 (EUPL-1.2). See LICENSE for the full English text.

For other languages, see: [EUPL license collection](https://interoperable-europe.ec.europa.eu/collection/eupl/eupl-text-eupl-12)

## Vragen?
Maintainer: Wouter Verwijlen - w.j.verwijlen@uu.nl
