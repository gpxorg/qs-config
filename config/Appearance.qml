pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root

  property string theme: "dark" // "dark" or "light". Default is "dark"
  property string themeTone: "static" // "dynamic" or "static". Default is "static"

  property QtObject size
  property QtObject rounding
  property QtObject margins
  property QtObject font
  property QtObject icon

  size: QtObject {
    property int barHeight: 40
  }

  rounding: QtObject {
    property int light: 4
    property int medium: 8
    property int heavy: 10
    property int extreme: 20
    property int circle: 200
  }

  margins: QtObject {
    property int small: 4
    property int medium: 8
    property int large: 16
  }

  font: QtObject {
    readonly property string family: "M PLUS 1p"

    readonly property int thin: 200
    readonly property int regular: 400
    readonly property int bold: 700
    readonly property int extraBold: 900

    readonly property int extraSmall: 11
    readonly property int small: 12
    readonly property int medium: 13
    readonly property int large: 14
    readonly property int extraLarge: 18
  }

  icon: QtObject {
    readonly property string family: "Phosphor"

    readonly property int small: 20
    readonly property int medium: 30
    readonly property int large: 40
  }


}
