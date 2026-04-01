import QtQuick
import Quickshell
import qs.services
import qs.misc

Row {
  id: root
  spacing: 0

  Rectangle {
    id: batteryBorder
    implicitWidth: 23
    implicitHeight: 14
    color: "transparent"
    border.width: 1
    radius: 5
    border.color: Colors.fgSubtle
  
    Rectangle {
      id: batteryFill
      anchors.top: parent.top
      anchors.bottom: parent.bottom
      anchors.left: parent.left
      width: (parent.width - anchors.margins * 2) * Battery.value
      anchors.margins: 2
      color: (Battery.charging || Battery.charged) ? Colors.green : (Battery.isLow ? Colors.orange : Colors.fgBase)
      radius: batteryBorder.radius / 1.5
    }
  }
  Rectangle {
    id: batteryNub
    implicitWidth: 1
    implicitHeight: 4
    color: batteryBorder.border.color
    topRightRadius: 2
    bottomRightRadius: 2
    anchors.verticalCenter: parent.verticalCenter
  }
}
