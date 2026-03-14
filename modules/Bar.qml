import Quickshell
import QtQuick
import QtQuick.Layouts

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

        // left
        Item { Layout.fillWidth: true }

        // middle
        RowLayout {
          spacing: 8
          Clock {}
          Workspaces {}
          Battery {}
        }
        // right
        Item { Layout.fillWidth: true }
      }
    }
  }
}
