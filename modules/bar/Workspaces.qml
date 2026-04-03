import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import Quickshell.Widgets
import qs.config
import qs.services

Item {
  id: root
  implicitWidth: pillRect.implicitWidth
  implicitHeight: Appearance.size.bar.height

  Rectangle {
    id: pillRect
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
    radius: 8
    color: Colors.bgSubtle
    implicitWidth: wsLayout.implicitWidth + 10
    implicitHeight: wsLayout.implicitHeight + 5
    z: 1

    Rectangle {
      id: highlight
      width: 20
      height: 20
      radius: 6
      color: Qt.alpha(Colors.accent, 0.2)
      anchors.verticalCenter: parent.verticalCenter

      property int activeIndex: {
        for (var i = 0; i < 5; i++) {
          var ws = Workspaces.getWorkspace(i + 1)
          if (ws && ws.active) return i
        }
        return 0
      }

      x: (pillRect.implicitWidth - wsLayout.implicitWidth) / 2 + activeIndex * (20 + 5)

      Behavior on x {
        SmoothedAnimation {
          velocity: 600
        }
      }
    }

    RowLayout {
      id: wsLayout
      anchors.centerIn: parent
      spacing: 5

      Repeater {
        model: 5
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
            color: currentWs ? currentWs.active ? Qt.alpha(Colors.accent, 1) : Colors.fgBase : Colors.fgSubtle
            font.family: Appearance.font.family
            font.weight: Appearance.size.bar.fontWeight
            font.pointSize: Appearance.font.small

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
      if (wheel.angleDelta.y > 0) {
        Hyprland.dispatch("workspace e-1")
      } else {
        Hyprland.dispatch("workspace e+1")
      }
    }
  }
}
