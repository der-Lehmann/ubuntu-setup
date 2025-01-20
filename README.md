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
exec --no-startup-id xinput set-prop $(xinput list | grep "Touchpad" | awk '{print $6}' | cut -d'=' -f2) "libinput Accel Speed" 0.5
```
The device id of the touchpad is being set dynamically since it can vary between reboots.  
The property `libinput Accel Speed` might need to be changed, depending on which property is responsible for the mouse sensitivity. To identify the property use the command `xinput list-props <id>`.  

If the computer does not have a touchpad, the line can obviously be deleted.  