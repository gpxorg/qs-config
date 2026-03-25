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
    text: "workspace " + Hyprland.focusedWorkspace.id
    color: Colors.accent
    font.weight: 800
  }
}
