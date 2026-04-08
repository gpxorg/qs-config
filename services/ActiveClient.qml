pragma Singleton 

import Quickshell
import Quickshell.Hyprland
import QtQuick

Singleton {
  id: root
  property string windowClass
  property string windowTitle
  readonly property int maxLength: 40

  Connections {
    target: Hyprland
    function onRawEvent(event) {
      if (event.name === "activewindow") {
        const parts = event.parse(2)
        windowClass = (parts[0] === "") ? "Destkop" : (parts[0].charAt(0).toUpperCase() + parts[0].slice(1))
        windowTitle = (parts[1].length > maxLength) ? parts[1].slice(0, maxLength) + "..." : parts[1]
      }
    }
  }
}
    
