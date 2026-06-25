## Nothing switches on

Was the studio started correctly by turning the key in the wall box by a quarter-turn? If so, check whether the power sequencer has power. The power sequencer is in the 19-inch rack and looks like this:

![Photograph: Furman CN-3600 SE](../../media/furman-cn-3600se.png)

## One or more lights do not switch on

1. Each light has a control box. Check that it is switched on and that the cables from the light to the box and from the box to the floor are connected correctly. If it is on and connected, check that brightness is not set to `0%`.
2. If the control boxes still do not switch on, check their connections. The green screen lights must use outputs 5–8 on the rear of the power sequencer. The desk light must connect to the first power strip and the light beside the desk to the second.
3. If the lights still do not work, a cable beneath the floor may be loose or a light may be defective. Contact Content & Digital.

## One of the displays does not switch on

- Check the plugs and cables. The computer monitors connect to the PC using DisplayPort cables and the teleprompter uses HDMI. All three connect to the RTX 4060 outputs, **not** directly to the motherboard or the DeckLink.
- If a computer monitor is defective, arrange a replacement immediately.
- If the teleprompter is defective, recording cannot continue. Contact Content & Digital.

## The computer does not start

- Check whether a vertical white LED is lit on the front panel.
- If not, try the button on the desk again. It should light up blue.
- If nothing happens, check that the PC power cable is firmly connected at the rear and to power-sequencer output 1 or 2.

If all of this is correct:

- Disconnect the PC power cable and carefully slide the case cover backwards.
- Check that the pins at the end of the desk power-button cable are attached correctly to the motherboard.

If they are connected correctly, the power button may be defective. Contact Content & Digital. If not, reconnect the pins as shown in the reference photograph, which still needs to be added.

## Applications appear on the wrong display

The intended layout is:

- 1, bottom right: secondary display, 1920×1080 — DIY Studio App, always on top, with Mozilla Firefox underneath in kiosk mode
- 2, bottom left: main display, 1920×1080 — OBS projectors, always on top, with PowerPoint Presenter View underneath
- 3, top left: teleprompter, 1920×1080 — PowerPoint slide show, using the dummy presentation by default

![Display layout: monitor 3 at the top left, monitor 2 below it and monitor 1 at the bottom right](../../media/monitor-layout.png)

First check that all displays are switched on.

### The PowerPoint slide show is on the wrong display

Sign in as administrator and verify the display configuration. The slide show will then appear on the correct display automatically.

### Firefox is on the wrong display

Drag Firefox to the correct display. Use `Ctrl+comma` to allow the mouse to move to another display.

### The OBS output is on the wrong display

1. Sign in as administrator.
2. Start OBS.
3. Right-click the **Program Monitor**.
4. Select **Open Project Projector > HP**.
5. Restart the PC.

### The DIY Studio App starts on the wrong display

Possible causes:

- a display was switched off during startup
- the first display is connected to the wrong graphics-card output
- Windows has numbered the displays differently

Try:

1. Ensure all three displays are on and restart the computer.
2. Swap the DisplayPort cables at the rear of the computer and restart.
3. Sign in as administrator and check display numbering in Windows Settings.
4. If the order is still wrong, contact Content & Digital.
