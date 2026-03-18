pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.UPower
import Quickshell.Services.Notifications

Singleton {
  id: root
  
  readonly property real value: UPower.displayDevice.percentage
  readonly property var state: UPower.displayDevice.state
  
  readonly property bool pluggedIn: state == UPowerDeviceState.PendingCharge
  readonly property bool charging: state === UPowerDeviceState.Charging
  readonly property bool charged: state == UPowerDeviceState.FullyCharged 

  readonly property bool isLow: value <= 20 / 100
  readonly property bool isCritical: value <= 10 / 100

  property bool lowDischarging: isLow && !charging
  property bool criticalDischarging: isCritical && !charging
  property bool fullCharging: pluggedIn && charged

  property var currentProfile: PowerProfiles.profile
  property string timeUntilFull: formatTime(UPower.displayDevice.timeToFull)
  property string timeUntilEmpty: formatTime(UPower.displayDevice.timeToEmpty)

  readonly property var colors: {
    if (charging) 
      return { fg:"#46D47D", bg: "#285B39" }
    else if (isLow) 
      return { fg: "#f05454", bg: "#4D2F2F" }
    else 
      return { fg: "#E6E6E6", bg: "#363636" }
  }
  
  onLowDischargingChanged: {
    if (!lowDischarging) return;
    Quickshell.execDetached([
        "notify-send",
        "Low Battery",
        "Battery is at " + Math.round(value * 100) + "%",
        "-u", "critical",
        "-a", "Shell"
      ]) 
    }
}


