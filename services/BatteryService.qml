pragma Singleton

import Quickshell
import Quickshell.Services.UPower
import QtQuick

Singleton {
  id: root
  readonly property bool state: UPower.state
  readonly property int per: UPower.percentage
}
