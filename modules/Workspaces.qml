import QtQuick
import Quickshell.Hyprland
import Quickshell.Widgets

WrapperMouseArea {
  cursorShape: Qt.SplitVCursor
  onWheel: (wheel) => {
    if (wheel.angleDelta.y > 0) {
      Hyprland.dispatch("workspace " + Math.min(Math.max(Hyprland.focusedWorkspace.id - 1, 1), 6))
    } else {
      Hyprland.dispatch("workspace " + Math.min(Math.max(Hyprland.focusedWorkspace.id + 1, 1), 6))
    }
  }

  Text {
    text: "Workspace " + Hyprland.focusedWorkspace.id
    color: "#ffffff"
  }
}
