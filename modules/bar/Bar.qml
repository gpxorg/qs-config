import Quickshell
import QtQuick
import QtQuick.Layouts
import qs.config

Scope {
  Variants {
    model: Quickshell.screens
  PanelWindow {
      required property var modelData
      screen: modelData
      color: Colors.surface
      anchors {
        top: true
        left: true
        right: true
      }
      implicitHeight: Appearance.size.barHeight

      GridLayout {
        rows: 1
        columns: 3
        uniformCellWidths: true
        height: Appearance.size.barHeight

        anchors.fill: parent
        anchors.leftMargin: Appearance.margins.large
        anchors.rightMargin: Appearance.margins.large
        
        // left
        RowLayout {
          spacing: 6
          Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter

          Workspaces {}
          ActiveClient {}
        }

        // middle
        RowLayout {
          spacing: 6
          Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        }

        // right
        RowLayout {
          spacing: 6
          Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

          KBLayout {}
          Battery {}
          Clock {}
        }
      }
    }
  }
}
