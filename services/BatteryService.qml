pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.UPower

// TODO: Add function for colors, finish all needed services and make use of these variables in the widget instead of having them in the widget file.

Singleton {
  id: root

  property var currentProfile: PowerProfiles.profile
  readonly property bool isCharging: UPower.displayDevice.state === UPowerDeviceState.Charging
  readonly property real batteryValue: UPower.displayDevice.percentage
  property string fullUntil: formatTime(UPower.displayDevice.timeToFull)
  
  property var powerProfiles: [
    { name: "PowerSaving" },
    { name: "Balanced" },
    { name: "Performance" }
  ]

  function setPowerProfile(profile) {
      PowerProfiles.profile = profile
  }

  
}
