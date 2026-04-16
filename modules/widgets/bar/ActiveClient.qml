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
      text: "\ue32e"
      color: Colors.surfaceText
      font.family: Appearance.icon.family
      font.pixelSize: Appearance.icon.small
    }
    BuddyText {
      text: ActiveClient.processCount
      color: Colors.surfaceText
    }

    BuddyText {
      id: name
      text: ActiveClient.windowClass
      color: Colors.surfaceText
    }
    BuddyText {
      id: desc
      text: ActiveClient.windowTitle
      color: Colors.surfaceTextUnavailable
    }
  }
}
