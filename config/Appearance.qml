pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root

  property string theme: "dark" // "dark" or "light". Default is "dark"
  property string themeTone: "static" // "dynamic" or "static". Default is "static"

  property QtObject size
  property QtObject font

  size: QtObject {
    property QtObject bar: QtObject {
      property int height: 40
      property int sideMargins: 16
      property int fontSize: root.font.extraSmall
      property int fontWeight: root.font.bold
    }
  }

  font: QtObject {
    readonly property string family: "M PLUS 1p"

    readonly property int thin: 200
    readonly property int regular: 400
    readonly property int bold: 700
    readonly property int extraBold: 900

    readonly property int extraSmall: 9
    readonly property int small: 10
    readonly property int medium: 11
    readonly property int large: 14
    readonly property int extraLarge: 18
    
  }


}
