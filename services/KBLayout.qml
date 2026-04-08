pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Hyprland


Singleton {
  id: root
  
  property string layout: "English (US)"

  Connections {
    target: Hyprland
    function onRawEvent(event) {
      if (event.name === "activelayout") {
          root.layout = event.data.split(",")[1]
      }
    }
  }
}
