import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import Quickshell.Widgets
import qs.config
import qs.services

Item {
  id: root
  implicitWidth: pillRect.implicitWidth
  implicitHeight: pillRect.implicitHeight

  Rectangle {
    id: pillRect
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
    radius: 11
    color: Colors.surfaceBackground
    implicitWidth: wsLayout.implicitWidth + 13
    implicitHeight: wsLayout.implicitHeight + 8
    z: 1

    Rectangle {
      id: highlight
      width: 20
      height: 20
      radius: 8
    
      color: Colors.primaryBorder
      anchors.verticalCenter: parent.verticalCenter

      property int activeIndex: {
        for (var i = 0; i < 9; i++) {
          var ws = Workspaces.getWorkspace(i + 1)
          if (ws && ws.active) return i
        }
        return 0
      }

      x: (pillRect.implicitWidth - wsLayout.implicitWidth) / 2 + activeIndex * (20 + 5)

      Behavior on x {
        SmoothedAnimation {
          velocity: 800
        }
      }
    }

    RowLayout {
      id: wsLayout
      anchors.centerIn: parent
      spacing: 5

      Repeater {
        model: 9
        Rectangle {
          property int index: modelData + 1
          property var currentWs: Workspaces.getWorkspace(index)

          implicitHeight: 20
          implicitWidth: 20
          radius: 6
          color: "transparent"

          MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: Hyprland.dispatch("workspace " + index)
          }

          Text {
            text: index
            anchors.centerIn: parent
            color: currentWs ? currentWs.active ? Colors.surface : Colors.primary : Colors.surfaceTextUnavailable
            font.family: Appearance.font.family
            font.weight: Appearance.size.bar.fontWeight
            font.pointSize: Appearance.font.extraSmall

            Behavior on color {
              ColorAnimation { duration: 150 }
            }
          }
        }
      }
    }
  }

  WrapperMouseArea {
    anchors.fill: parent
    z: 0
    cursorShape: Qt.SplitVCursor
    onWheel: (wheel) => {
      var current = highlight.activeIndex + 1 
      if (wheel.angleDelta.y > 0) {
        if (current > 1) Hyprland.dispatch("workspace " + (current - 1))
      } else {
        if (current < 9) Hyprland.dispatch("workspace " + (current + 1))
      }
    }
  }
}
