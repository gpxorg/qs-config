import QtQuick
import Quickshell
import qs.services
import qs.misc

Row {
  id: root
  property real radius: 6

  spacing: 1
  Rectangle {
    id: track
    implicitWidth: Theme.size.batteryWidth
    implicitHeight: Theme.size.batteryHeight
    radius: root.radius
    color: Battery.colors.bg
    anchors.verticalCenter: parent.verticalCenter

    Text {
      width: track.width
      height: track.height
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter
      text: Math.round(Battery.value * 100)
      color: Battery.colors.fg
      font.weight: 800
      font.pointSize: 7.5
    }
    
    Item {
      anchors {
        top: parent.top
        bottom: parent.bottom
        left: parent.left
      }
      width: parent.width * Battery.value
      clip: true

      Rectangle {
        id: fill
        width: track.width
        height: track.height
        radius: track.radius
        color: Battery.colors.fg

        Text {
          id: batteryLabel
          width: track.width
          height: track.height
          horizontalAlignment: Text.AlignHCenter
          verticalAlignment: Text.AlignVCenter
          text: Math.round(Battery.value * 100)
          color: Battery.colors.bg
          font.weight: 800
          font.pointSize: 7.5
          clip: true
        }
      }
    }
  }
  Rectangle {
    id: batteryNub
    implicitWidth: Theme.size.batteryNubWidth
    implicitHeight: Theme.size.batteryNubHeight
    color: Battery.value < 0.99 ? track.color : fill.color
    topRightRadius: 20
    bottomRightRadius: 20
    anchors.verticalCenter: parent.verticalCenter
  }
}
