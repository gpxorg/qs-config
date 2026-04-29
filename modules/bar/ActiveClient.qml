import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import qs.config
import qs.services
import qs.components

Item {
  id: root
  implicitHeight: widget.implicitHeight

  RowLayout {
    id: widget
    spacing: 6

    BuddyButton {
      variant: "ghost"

      BuddyIcon { 
        icon: ActiveClient.icon
        variant: "Fill"
      }
      BuddyText { 
        text: ActiveClient.windowClass
        weight: 3
      }
      BuddyText {
        text: ActiveClient.windowTitle
      }
    }
  }
}
