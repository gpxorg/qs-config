pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root

  // Used to change the colorscheme theme, use values "dark" or "light". Defaults to dark if incorrect name is given.
  property string theme: "dark"

  // sizes for several components
  readonly property QtObject size: QtObject {
    // sizes for bar items
    readonly property QtObject bar: QtObject {
      property int height: 35
      property int borderHeight: 2
      property int sideMargins: 16
      property int textSize: root.font.small
      property int textWeight: root.font.bold
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
