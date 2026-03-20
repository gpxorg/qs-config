import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.misc

Scope {
  Variants {
    model: Quickshell.screens
    PanelWindow {
      required property var modelData
      screen: modelData
      color: Theme.colors.bg3
      anchors {
        top: true
        left: true
        right: true
      }
      implicitHeight: Theme.size.bar.height

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
          KBLayout {}
        }
        // right
        Item { Layout.fillWidth: true }
      }
    }
  }
}
