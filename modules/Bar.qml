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
        rows: 1
        columns: 3
        uniformCellWidths: true
        height: Appearance.size.bar.height

        anchors.fill: parent
        anchors.leftMargin: Appearance.size.bar.sideMargins
        anchors.rightMargin: Appearance.size.bar.sideMargins
        
        // left
        RowLayout {
          spacing: 10
          Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter

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
        height: Appearance.size.bar.borderHeight
        color: Colors.bgSubtle
      }
    }
  }
}
