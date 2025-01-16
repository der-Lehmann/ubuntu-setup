# Ubuntu setup and dotfiles

The files in this repository are used to setup a fresh Ubuntu installation as a developer machine.  
In order to start the setup, only the `bootstrap.sh` script needs to be run.  
The script should not be run as root.  

After the script has finished, the computer needs to be restarted.  
When the login screen appears, select your user and change the desktop environment to `i3` using the settings icon in the bottom right corner.

## Adjustments after script completion

Certain things probably need to be tweaked depending on the computer the script ran on.  
These things are listed below.  

#### Touchepad sensitivity
In the `i3` config file the touchpad sensitivity is being adjusted with the following line:
```
exec --no-startup-id xinput set-prop 10 "libinput Accel Speed" 0.5
```
The device id, 10 in this case, will most likely need to be changed.  
Also the property `libinput Accel Speed` might need to be changed too.  

In order to identify the touchpad device id, run the command `xinput list`.  
After the id is known, the property responsible for the touchpad sensitivity needs to be identified. This can be done with the command `xinput list-props <id>`.  

If the computer does not have a touchpad, the line can obviously be deleted.  