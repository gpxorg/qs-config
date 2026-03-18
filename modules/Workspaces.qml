import QtQuick
import Quickshell.Hyprland
import Quickshell.Widgets
import qs.misc

WrapperMouseArea {
  cursorShape: Qt.SplitVCursor
  onWheel: (wheel) => {
    if (wheel.angleDelta.y > 0) {
      Hyprland.dispatch("workspace e-1")
    } else {
      Hyprland.dispatch("workspace e+1")
    }
  }

  Text {
    text: "Workspace " + Hyprland.focusedWorkspace.id
    color: Theme.colors.primary1
    font.weight: 800
  }
}
