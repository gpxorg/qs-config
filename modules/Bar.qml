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
      color: Colors.bgBase
      anchors {
        top: true
        left: true
        right: true
      }
      implicitHeight: Appearance.size.barHeight

      RowLayout {
        anchors.fill: parent

        // left
        RowLayout {
          spacing: 8

          Workspaces {}
        }

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
