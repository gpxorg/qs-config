import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.UPower

Rectangle {
  readonly property var state: UPower.displayDevice.state
  readonly property real per: UPower.displayDevice.percentage
  id: shell
  width: 28
  height: 16
  radius: 5
  color: "#aaaaaa"
  anchors.verticalCenter: parent.verticalCenter
  
  Item {
    anchors {
      top: parent.top
      bottom: parent.bottom
      left: parent.left
    }
    width: parent.width * shell.per
    clip: true

    Rectangle {
      width: shell.width
      height: shell.height
      radius: shell.radius
      color: shell.state === UPowerDeviceState.Charging ? "#36D96F" : UPowerDeviceState.Empty ? "#E84743" : "#ffffff"
    }
  }

  Text {
    id: batteryLabel
    width: shell.width
    height: shell.height
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    text: Math.round(shell.per * 100)
    color: "#000000"
    font.weight: 400
    font.pointSize: 8
  }
}
