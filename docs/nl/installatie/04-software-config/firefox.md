Firefox draait altijd achter het venster van de DIY Studio App en wordt gebruikt om in te loggen bij Microsoft, voor het afspelen van video's in een videospeler (zowel de tutorialvideo's als opnames van de gebruiker) en voor het tonen van het laadscherm van de DIY Studio App.

- Log in als User. Start de installatie van Firefox. Wanneer er gevraagd wordt om het administratorwachtwoord in te vullen klik je op `"No"`.

- Start Firefox en kies ervoor om deze als default browser in te stellen (belangrijk!). Het Settings-scherm van Windows opent. Klik bij `Make Firefox your default browser` op `Set default`.

- Firefox dient geïnstalleerd te zijn met de volgende settings:
  
  - Type `about:config` in de Firefox address bar.
  - Accepteer de beveiligingswaarschuwing.
  - Type `disableResetPrompt` en klik op het +-icoon om deze toe te voegen. Zorg dat "boolean" is geselecteerd.
  - Zoek naar `browser.link.open_newwindow.restriction`.
  - Dubbelklik om de waarde te veranderen naar `0`.
  - Zoek naar `browser.link.open_newwindow`.
  - Dubbelklik om de waarde te veranderen naar `1`.

En verder:

- Klik op het hamburgermenu (rechtsboven onder de sluitknop).
- Kies *Settings*.
- Onder *General*: klik op `Make default` en daarna in het Windows Settings-scherm op `Set default`, mocht je dit nog niet gedaan hebben.
- Ga naar `Privacy & Security`.
- Scroll naar *Passwords* en vink `Ask to save passwords` uit.
- Scroll naar *History* en kies `Firefox will: Never remember history`.
- Herstart Firefox.
- Klik daarna met de rechtermuisknop op de bookmarks toolbar en kies `Bookmarks Toolbar > Never Show`.

![Screenshot: rechtermuisknop > Bookmarks Toolbar > Never Show](../../media/firefox-bookmarks.png)
