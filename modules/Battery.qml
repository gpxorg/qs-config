import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.UPower

Row {
  Rectangle {
    readonly property var state: UPower.displayDevice.state
    readonly property real per: UPower.displayDevice.percentage
    id: shell
    width: 28
    height: 16
    radius: 5
    color: "#303832"
    anchors.verticalCenter: parent.verticalCenter

    Text {
      width: shell.width
      height: shell.height
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      text: Math.round(shell.per * 100)
      color: fill.color
      font.weight: 600
      font.pointSize: 8
    }
    
    Item {
      anchors {
        top: parent.top
        bottom: parent.bottom
        left: parent.left
      }
      width: parent.width * shell.per
      clip: true

      Rectangle {
        id: fill
        width: shell.width
        height: shell.height
        radius: shell.radius
        color: "#ededed"

        Text {
          id: batteryLabel
          width: shell.width
          height: shell.height
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          text: Math.round(shell.per * 100)
          color: shell.color
          font.weight: 600
          font.pointSize: 8
          clip: true
        }
      }
    }
  }
  Rectangle {
    width: 2.65
    height: 7.3
    color: shell.per < 0.96 ? shell.color : fill.color
    topRightRadius: 4
    bottomRightRadius: 4
    anchors.verticalCenter: parent.verticalCenter
  }
}
