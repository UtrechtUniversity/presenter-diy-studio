## Er gaat niets aan

Is de studio correct opgestart door de sleutel in de wandkast een kwartslag te draaien? Zo ja, controleer dan of de power sequencer stroom heeft. De power sequencer bevindt zich in het 19”-rack en ziet er als volgt uit:

![Foto: Furman CN-3600 SE](../../media/furman-cn-3600se.png)

## Een of meerdere lampen gaan niet aan

1. Aan elke lamp hangt een kastje. Controleer of deze aan staat, en of de stekkers vanaf de lamp naar het kastje, en van het kastje naar de vloer goed zijn aangesloten. Staat het kastje aan en is alles correct aangesloten? Controleer dan of de brightness niet op `0%` staat.
2. Gaan de kastjes onder lampen nog steeds niet aan? De lampen die bij de green screen staan moeten aangesloten zijn op outputs 5–8 aan de achterkant van de power sequencer. De lamp op het bureau hoort aangesloten te zijn op de eerste stekkerdoos. De lamp naast het bureau hoort aangesloten te zijn op de tweede stekkerdoos. Controleer of alles is aangesloten.
3. Lukt het nog steeds niet om de lampen aan te krijgen? Wellicht zit er een kabel los onder de vloer, of is de lamp defect. Neem contact op met Content & Digital.

## Een van de beeldschermen gaat niet aan

- Controleer de stekkers en kabels. De computermonitors worden met de PC verbonden met DisplayPort-kabels. De teleprompter wordt verbonden met de PC met een HDMI-kabel. Deze drie worden aangesloten op de outputs van de RTX4060, dus **niet** direct op het moederbord en **niet** op de Decklink.
- Is één van de computermonitoren defect? Regel dan direct een vervangend scherm.
- Is de teleprompter defect? Dan kan de opname niet doorgaan. Neem contact op met Content & Digital.

## De computer start niet op

- Kijk aan de voorkant van het paneel of hier een witte verticale led brandt.
- Zo niet, probeer de computer dan nogmaals aan te zetten met de knop op het bureau. Deze knop hoort blauw op te lichten.
- Gebeurt er nog steeds niets, controleer dan of de stekker van de voeding van de PC er aan de achterkant goed in zit, en of deze stekker correct verbonden is met de power sequencer (output 1 of 2).

Klopt alles?

- Trek dan de stekker uit de PC en schuif voorzichtig de kap van de kast naar achteren toe.
- Controleer of de pinnen die aan het uiteinde zitten van de kabel die afkomstig is van de aan-uitknop op het bureau goed op het moederbord zitten bevestigd.

Is dit goed aangesloten?

- Dan is wellicht de aan-uitknop stuk. Neem contact op met Content & Digital.
- Als het niet goed verbonden is, probeer de pinnen dan aan te sluiten zoals op de referentiefoto (moet nog worden toegevoegd).

## Apps worden op het verkeerde scherm getoond

De verdeling van de schermen hoort als volgt te zijn:

- 1 (rechtsonder): tweede beeldscherm (1920x1080): DIY Studio App (always on top), Mozilla Firefox (onder, kiosk modus)
- 2 (linksonder): hoofdscherm (1920x1080): OBS projectors (always on top), PowerPoint Presenter View (onder)
- 3 (linksboven): Teleprompter (1920x1080): PowerPoint SlideShow (dummypresentatie als default)

![Grafisch overzicht van de beeldschermen: linkerkolom: bovenaan monitor 3, eronder monitor 2; rechterkolom: onderaan monitor 1](../../media/monitor-layout.png)

Controleer eerst of alle schermen daadwerkelijk aan staan.

### PowerPoint Slide Show staat op het verkeerde scherm

Log in als administrator en controleer of de beeldschermen correct staan ingesteld. De slide show wordt dan automatisch op het goede scherm weergegeven.

### Firefox staat op het verkeerde scherm

Sleep Firefox handmatig naar het juiste scherm. Gebruik `Ctrl+komma` om de muis naar een ander scherm te kunnen slepen.

### OBS-weergave staat op het verkeerde scherm

1. Log in als administrator.
2. Start OBS.
3. Klik met de rechtermuisknop op de **Program Monitor**.
4. Kies **Open Project Projector > HP**.
5. Start hierna de PC opnieuw op.

### De DIY Studio App start op het verkeerde scherm

Dit kan komen doordat:

- een van de beeldschermen nog uit stond tijdens het opstarten
- het eerste beeldscherm op de verkeerde uitgang van de videokaart van de computer is aangesloten
- Windows de beeldschermen anders genummerd heeft

Probeer het volgende:

1. Controleer of alle drie de schermen aan staan en herstart de computer.
2. Verwissel de DisplayPort-kabels achterin de computer en herstart de PC.
3. Log als administrator in en controleer in Windows Settings de schermnummering.
4. Klopt de volgorde nog steeds niet? Neem dan contact op met Content & Digital.
