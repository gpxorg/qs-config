pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root
  
  property string theme: "dark"

  readonly property QtObject size: QtObject {

    readonly property QtObject bar: QtObject {
      property int height: 34
      property int textSize: root.font.small
      property int textWeight: root.font.extraBold
    }

  }

  readonly property QtObject font: QtObject {
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
