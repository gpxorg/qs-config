pragma Singleton 

import Quickshell
import Quickshell.Hyprland
import QtQuick

Singleton {
  id: root
  property string windowClass: "Desktop"
  property string windowTitle
  readonly property int maxLength: 40

  readonly property var categoryIcons: ({
    WebBrowser: "global",
    TerminalEmulator: "terminal",
    FileManager: "folder",
    Game: "game-controller",
    Development: "code",
    Settings: "gear",
    HardwareSettings: "gear",
    DesktopSettings: "gear",
    ConsoleOnly: "terminal",
    InstantMessaging: "chat",
    Recorder: "video-camera",
    Player: "monitor-play",
    Utility: "wrench",
    

  })

  readonly property string icon: {
    const entry = DesktopEntries.heuristicLookup(windowClass.toLowerCase())
    const categories = entry?.categories ?? []
    for (const cat of categories) {
      if (categoryIcons[cat]) return categoryIcons[cat]
    }
    return "desktop-tower"
  }

  Connections {
    target: Hyprland
    function onRawEvent(event) {
      if (event.name === "activewindow") {
        const parts = event.parse(2)
        windowClass = (parts[0] === "") ? "Desktop" : (parts[0].charAt(0).toUpperCase() + parts[0].slice(1)) 
        windowTitle = (parts[1].length > maxLength) ? parts[1].slice(0, maxLength) + "..." : parts[1] //truncate string if its longer than maxLength
        //const entry = DesktopEntries.heuristicLookup(parts[0])
        //console.log(entry?.categories)
      }

    }
  }
}
