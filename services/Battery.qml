pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Services.UPower
import Quickshell.Services.Notifications

import qs.config

Singleton {
  id: root
  
  readonly property bool isLaptop: UPower.displayDevice.isLaptopBattery
  readonly property real value: UPower.displayDevice.percentage
  readonly property var state: UPower.displayDevice.state
  
  readonly property bool charging: state === UPowerDeviceState.Charging
  readonly property bool pluggedIn: charging || state == UPowerDeviceState.PendingCharge
  readonly property bool charged: state == UPowerDeviceState.FullyCharged 

  readonly property bool isLow: isLaptop && (value <= 20 / 100)
  readonly property bool isCritical: isLaptop && (value <= 10 / 100)

  property bool lowDischarging: isLow && !charging
  property bool criticalDischarging: isCritical && !charging


  onLowDischargingChanged: {
    if (!isLaptop || !lowDischarging) return;
    Quickshell.execDetached([
        "notify-send",
        "Low Battery",
        "Battery is at " + Math.round(value * 100) + "%",
        "-u", "critical",
        "-a", "Shell"
    ]) 
  }

  onCriticalDischargingChanged: {
    if (!isLaptop || !criticalDischarging) return;
    Quickshell.execDetached([
      "notify-send",
      "Critically low battery!",
      "Please plug the charger in!",
      "-u", "critical",
      "-a", "Shell"
    ])
  }
}

