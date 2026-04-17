import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import qs.config
import qs.services
import qs.modules.components

Item {
  id: root
  implicitHeight: widget.implicitHeight

  RowLayout {
    id: widget
    spacing: 6

    BuddyIcon { 
      icon: "monitor"
    }
    BuddyText { 
      text: ActiveClient.processCount
      weight: 3
    }
    BuddyText { 
      text: ActiveClient.windowClass
      weight: 3
    }
    BuddyText {
      text: ActiveClient.windowTitle
      color: Colors.surfaceTextUnavailable
    }
  }
}
