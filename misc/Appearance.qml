pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root
  
  property string theme: "dark"

  property QtObject size

  size: QtObject {
    readonly property int barHeight: 36
  }


}
