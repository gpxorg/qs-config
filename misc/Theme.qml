pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root

  property QtObject size
  property QtObject colors

  size: QtObject {
    readonly property QtObject bar: QtObject{
       readonly property real height: 35
    }
  }

  colors: QtObject {
    property string primary1: "#EFDC9E"
    property string primary2: "#F5CB5C"
    property string primary3: "#8D7840"

    property string bg1: "#333533"
    property string bg2: "#2C2D2B"
    property string bg3: "#242423"

    property string fg1: "#E8EDDF"
    property string fg2: "#CFDBD5"
    property string fg3: "#BCC7C2"
  }
}
