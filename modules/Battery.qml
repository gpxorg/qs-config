import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.UPower

// RED - bg: #4D2F2F, fg: #f05454
// ORANGE - bg: #524018, fg: #FF9812
// GREEN - bg: #1E301E, fg: #5BC75B
// WHITE - bg: #4D4D4D, fg: E6E6E6
//
// TODO: Change the variables and make use of BatteryService.qml as well as the 
// colors of the widget.
// TODO: Animations for the widget and panel for more info. 

Row {
  spacing: 1.5
  Rectangle {
    readonly property var state: UPower.displayDevice.state
    readonly property real per: UPower.displayDevice.percentage
    id: shell
    width: 28
    height: 16
    radius: 5
    color: "#4d4d4d"
    anchors.verticalCenter: parent.verticalCenter

    Text {
      width: shell.width
      height: shell.height
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      text: Math.round(shell.per * 100)
      color: fill.color
      font.weight: 800
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
        color: "#E6E6E6"

        Text {
          id: batteryLabel
          width: shell.width
          height: shell.height
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          text: Math.round(shell.per * 100)
          color: shell.color
          font.weight: 800
          font.pointSize: 8
          clip: true
        }
      }
    }
  }
  Rectangle {
    width: 2.5
    height: 6
    color: shell.per < 0.96 ? shell.color : fill.color
    topRightRadius: 3
    bottomRightRadius: 3
    anchors.verticalCenter: parent.verticalCenter
  }
}
