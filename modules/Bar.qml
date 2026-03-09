import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Widgets
import Quickshell.Hyprland
import qs.services

Scope {
  Variants {
    model: Quickshell.screens
    PanelWindow {
      required property var modelData
      screen: modelData
      color: "#000000"
      anchors {
        top: true
        left: true
        right: true
      }
      implicitHeight: 30

      RowLayout {
        anchors.fill: parent

        Item { Layout.fillWidth: true }

        RowLayout {
          spacing: 8
          Text {
            text: Clock.time
            color: "#ffffff"
          }
          WrapperMouseArea {
            cursorShape: Qt.SplitVCursor
            onWheel: (wheel) => {
              if (wheel.angleDelta.y > 0) {
                Hyprland.dispatch("workspace " + Math.min(Math.max(Hyprland.focusedWorkspace.id - 1, 1), 6))
              } else {
                Hyprland.dispatch("workspace " + Math.min(Math.max(Hyprland.focusedWorkspace.id + 1, 1), 6))
              }
            }

            Text {
              text: "Workspace " + Hyprland.focusedWorkspace.id
              color: "#ffffff"
            }
          }
        }

        Item { Layout.fillWidth: true }
      }
    }
  }
}
