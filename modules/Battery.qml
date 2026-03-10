import QtQuick
import QtQuick.Controls
import Quickshell

Rectangle {
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
    width: parent.width * 0.5
    clip: true

    Rectangle {
      width: shell.width
      height: shell.height
      radius: shell.radius
      color: "#ffffff"
    }
  }

  Text {
    id: batteryLabel
    width: shell.width
    height: shell.height
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    text: "50"
    color: "#000000"
    font.weight: 400
    font.pointSize: 8
  }
}
