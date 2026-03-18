pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root

  property QtObject size
  property QtObject colors

  size: QtObject {
    property int barHeight: 40
    property int batteryWidth: 30
    property int batteryHeight: 16
    property int batteryNubWidth:3
    property int batteryNubHeight: 6
  }
  

}
