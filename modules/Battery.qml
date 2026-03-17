import QtQuick
import QtQuick.Controls
import Quickshell
import qs.services

Row {
  id: root
  property real batWidth: 30
  property real batHeight: 16
  property real nubWidth: 3
  property real nubHeight: 6
  property real radius: 6

  spacing: 1
  Rectangle {
    id: track
    width: root.batWidth
    height: root.batHeight
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
    id: nub
    width: root.nubWidth
    height: root.nubHeight
    color: Battery.value < 0.99 ? track.color : fill.color
    topRightRadius: 20
    bottomRightRadius: 20
    anchors.verticalCenter: parent.verticalCenter
  }
}
