# About
A zsh script to provide more convenient access to the URL scheme offered by the HomeControl app for Mac.

# Installation
- Place the `hcc.sh` file in your home directory
- `chmod +x hcc.sh`
  
# Usage
`./hcc.sh <action> <device> <value>`

`<action>` can be one of
- `power` to set a device `on` or `off`
- `bright` to set brightness (0-100)
- `hue` to set hue (0-360)
- `sat` to set saturation (0-100)
- `temp` to set a white temperature (depends on your device, typically 2700-6500)
- `scene` to set a scene (skip the device parameter as this is implied by the scene)

# Examples
`./hcc.sh power “Entrance Light” on`

`./hcc.sh bright Garage 50`

`./hcc.sh scene Evening`

`./hcc.sh temp Hallway 6500`