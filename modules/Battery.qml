import QtQuick
import Quickshell
import qs.services
import qs.misc

Row {
  id: root
  spacing: 1

  Rectangle {
    id: batteryBorder
    implicitWidth: Theme.size.battery.width
    implicitHeight: Theme.size.battery.height
    color: "transparent"
    border.width: 2
    radius: Theme.size.battery.radius
    border.color: Theme.colors.fg3
  
    Rectangle {
      id: batteryFill
      anchors.fill: parent
      anchors.margins: 4
      color: "#ffffff"
      radius: 2
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
