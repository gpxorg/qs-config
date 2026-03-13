import QtQuick
import QtQuick.Controls
import QtQuick.Effects
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
    width: parent.width * 1
    clip: true

    Rectangle {
      width: shell.width
      height: shell.height
      radius: shell.radius
      color: "#73BA82"
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
    font.weight: 600
    font.pointSize: 8

    layer.enabled: true
    layer.effect: MultiEffect {
      shadowEnabled: true
      shadowColor: "#ffffff"
      shadowBlur: 0.9
      shadowOpacity: 0.8
    }
  }
}
