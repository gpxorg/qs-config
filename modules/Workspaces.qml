import QtQuick
import Quickshell.Hyprland
import Quickshell.Widgets

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
    color: "#ffffff"
  }
}
