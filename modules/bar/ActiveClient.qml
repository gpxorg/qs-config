import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

import qs.config
import qs.services

Item {
  id: root
  implicitHeight: activeclientWidget.implicitHeight

  RowLayout {
    id: activeclientWidget
    spacing: 10
    Text {
      id: name
      text: ActiveClient.windowClass
      color: Colors.surfaceText
      font.family: Appearance.font.family
      font.pointSize: Appearance.size.bar.fontSize
      font.weight: Appearance.size.bar.fontWeight
    }
    Text {
      id: desc
      text: ActiveClient.windowTitle
      color: Colors.surfaceTextUnavailable
    }
  }
}
