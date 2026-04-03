pragma Singleton

import Quickshell
import QtQuick
import qs.config

Singleton {
  id: root

  property var currentTheme: {
    switch(Appearance.theme) {
      case "dark": return DarkColors
      case "light": return LightColors
      default: return DarkColors
    }
  }
    readonly property string bgBase: currentTheme.bgBase
    readonly property string bgSubtle: currentTheme.bgSubtle
    readonly property string bgDimmed: currentTheme.bgDimmed

    readonly property string fgBase: currentTheme.fgBase
    readonly property string fgSubtle: currentTheme.fgSubtle

    readonly property string accent: currentTheme.accent

    readonly property string red: currentTheme.red
    readonly property string green: currentTheme.green
    readonly property string blue: currentTheme.blue

    readonly property string cyan: currentTheme.cyan
    readonly property string pink: currentTheme.pink
    readonly property string orange: currentTheme.orange


}
