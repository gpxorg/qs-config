pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root

  property QtObject size
  property QtObject colors

  size: QtObject {
    property int barHeight: 30
    property int batteryWidth: 30
    property int batteryHeight: 16
    property int batteryNubWidth:3
    property int batteryNubHeight: 6
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
// https://coolors.co/bcc7c2-cfdbd5-e8eddf-efdc9e-f5cb5c-8d7840-242423-2c2d2b-333533
}
