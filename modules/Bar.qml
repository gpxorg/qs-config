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
      implicitHeight: Appearance.size.bar.height

      GridLayout {
        rows: 2
        columns: 3
        uniformCellWidths: true

        anchors.fill: parent
        anchors.leftMargin: 16
        anchors.rightMargin: 16
        
        // left
        RowLayout {
          spacing: 10
          Layout.alignment: Qt.AlignLeft | Qt.AlignHCenter

          Workspaces {}
        }

        // middle
        RowLayout {
          spacing: 10
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        // right
        RowLayout {
          spacing: 10
          Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

          KBLayout {}
          Battery {}
          Clock {}
        }
      }
      Rectangle {
        anchors {
          bottom: parent.bottom
          left: parent.left
          right: parent.right
        }
        height: 1
        color: Colors.bgSubtle
      }
    }
  }
}
