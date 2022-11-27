# About
A zsh script to provide more convenient access to the URL scheme offered by the [HomeControl app for Mac](https://apps.apple.com/nz/app/homecontrol-menu-for-homekit/id1547121417?mt=12).

# Installation
- Place the `hcc.sh` file in your home directory
- Edit the script to include your Authentication Token.
  - Open HomeControl Settings.
  - Click the **Automation...** button.
  - Copy the Authentication Token
  - Replace the value in quotes in line two of `hcc.sh` with your token.
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
