pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.UPower

Singleton {
  id: root

  property var currentProfile: PowerProfiles.profile
  readonly property var state: UPower.displayDevice.state
  readonly property real value: UPower.displayDevice.percentage
  property string timeUntilFull: formatTime(UPower.displayDevice.timeToFull)
  

  readonly property var colors: {
    if (state === UPowerDeviceState.Charging || state === UPowerDeviceState.FullyCharged) 
      return { fg:"#46D47D", bg: "#285B39" }
    else if (value <= 0.2) 
      return { fg: "#f05454", bg: "#4D2F2F" }
   else 
      return { fg: "#E6E6E6", bg: "#7A7A7A" }
    }

}


