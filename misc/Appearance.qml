pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root
  
  property string theme: "dark"

  property QtObject size
  property QtObject font

  size: QtObject {
    readonly property int barHeight: 34
  }

  font: QtObject {
    readonly property string family: "Nimbus Sans"

    readonly property int thin: 200
    readonly property int regular: 400
    readonly property int bold: 700
    readonly property int extraBold: 900

    readonly property int xsmall: 9
    readonly property int small: 10
    readonly property int medium: 12
    readonly property int large: 14
    readonly property int xlarge: 18
    
  }


}
