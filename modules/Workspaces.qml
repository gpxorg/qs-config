import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import Quickshell.Widgets
import qs.misc
import qs.services


Item {
  id: root
  implicitWidth: wsLayout.implicitWidth + 20
  implicitHeight: Appearance.size.bar.height

  WrapperMouseArea {
    anchors.fill: parent
    cursorShape: Qt.SplitVCursor
    onWheel: (wheel) => {
      if (wheel.angleDelta.y > 0) {
        Hyprland.dispatch("workspace e-1")
      } else {
        Hyprland.dispatch("workspace e+1")
      }
    }

    RowLayout {
      id: wsLayout
      anchors.centerIn: parent
      spacing: 1
      Repeater {
        model: 5
        Rectangle {
          property int index: modelData + 1
          property var currentWs: Workspaces.getWorkspace(index)

          implicitHeight: 21
          implicitWidth: 22
          radius: 8
          color:currentWs ? currentWs.active ? Qt.alpha(Colors.accent, 0.2) : Colors.bgBase : Colors.bgBase
          
          Text {
            text: index 
            anchors.centerIn: parent
            color: currentWs ? currentWs.active ? Qt.alpha(Colors.accent, 1) : Colors.fgBase : Colors.fgSubtle
            font.family: Appearance.font.family
            font.weight: Appearance.size.bar.textWeight
            font.pointSize: Appearance.font.small
          }
        }
      }
    }
  }
}
