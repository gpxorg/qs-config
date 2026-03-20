import QtQuick
import Quickshell
import qs.services
import qs.misc

Row {
  id: root
  spacing: 0

  Rectangle {
    id: batteryBorder
    implicitWidth: 26
    implicitHeight: 16
    color: "transparent"
    border.width: 2
    radius: 6
    border.color: Theme.colors.fg3
  
    Rectangle {
      id: batteryFill
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      anchors.left: parent.left
      width: (parent.width - anchors.margins * 2) * Battery.value
      anchors.margins: 3
      color: Battery.colors.fg
      radius: 3
    }
  }
  Rectangle {
    id: batteryNub
    implicitWidth: 2
    implicitHeight: 4
    color: Theme.colors.fg3
    topRightRadius: 10
    bottomRightRadius: 10
    anchors.verticalCenter: parent.verticalCenter
  }
}
