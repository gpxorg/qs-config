pragma Singleton 

import Quickshell
import Quickshell.Hyprland
import QtQuick

Singleton {
  id: root
  property string windowClass: "Desktop"
  property string windowTitle
  property int processCount: 0
  readonly property int maxLength: 40

  function countClients() {
    const toplevels = Hyprland.toplevels.values
    let count = 0
    for (let i = 0; i < toplevels.length; i++) {
    if (toplevels[i].workspace && toplevels[i].workspace.id === Hyprland.focusedWorkspace.id)
          count++
    }
    processCount = count
    Hyprland.refreshToplevels()
    }



  Connections {
    target: Hyprland
    function onRawEvent(event) {
      if (event.name === "activewindow") {
        const parts = event.parse(2)
        windowClass = (parts[0] === "") ? "Desktop" : (parts[0].charAt(0).toUpperCase() + parts[0].slice(1)) 
        windowTitle = (parts[1].length > maxLength) ? parts[1].slice(0, maxLength) + "..." : parts[1] //truncate string if its longer than maxLength
      }
      if (event.name === "openwindow" || event.name === "closewindow") {
        countClients()
      }
    }
    function onFocusedWorkspaceChanged() { countClients() }
  }
}
