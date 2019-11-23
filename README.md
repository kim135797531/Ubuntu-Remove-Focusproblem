# Ubuntu 18.04.1. Remove Focusproblem
There is some problem out there with Ubuntu 18.04.1.\
With AMD Readon R9 290X series and multiple monitors i got a focus problem.\
If you opened some applications, from time to time you cannot click on the application window you want to click on.\
The window you click on just doesn't recognize your mouse click.\

# First solution
Click on the menu bar and then click outside of the window. Now you are able again to click on other windows. 
You will get your focus back again.\
But it is still very annoying.

# First look at errors
My gnome-shell write some errors to syslog:

```
Nov 23 08:23:15 steffen-pc gnome-shell[3329]: pushModal: invocation of begin_modal failed
Nov 23 08:31:04 steffen-pc gnome-shell[3329]: pushModal: invocation of begin_modal failed
Nov 23 08:31:09 steffen-pc gnome-shell[3329]: pushModal: invocation of begin_modal failed
Nov 23 08:31:29 steffen-pc gnome-shell[3329]: pushModal: invocation of begin_modal failed
Nov 23 08:31:30 steffen-pc gnome-shell[3329]: pushModal: invocation of begin_modal failed
Nov 23 08:31:51 steffen-pc gnome-shell[3329]: pushModal: invocation of begin_modal failed
```

# Google doesn't help much
I spent hours to search a suiting solution in web.\
My best solution so far: Execute some shortcuts at startup.\
To be precisely: 
```
ALT + TAB 
CTRL + D
```
If you do so, the focus problem does not occur anymore.

# Automatization
I do not want to press the shortcuts every startup.\
So i wrote a skript that executes the shortcuts after login.\
The files can be found in this repository.\
Make sure you installed 
```
xdotool
```
and execute
```
cp <path-to>/autostart_rfproblem.desktop ~/.config/autostart/
cp <path-to>/rfocusproblem.sh /usr/share/rfocusproblem/
chmod +x ~/.config/autostart/autostart_rfproblem.desktop
chmod +x /usr/share/rfocusproblem/rfocusproblem.sh
```
If ./config/autostart doesn't exists, just create it.
