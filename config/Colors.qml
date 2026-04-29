pragma Singleton

import Quickshell
import QtQuick
import qs.config

Singleton {
  id: root

  property var currentTheme: {
    var theme = Appearance.theme
    var tone = Appearance.themeTone
    if (theme === "dark" && tone === "static") return DarkStaticColors
    if (theme === "dark" && tone === "dynamic") return DarkDynamicColors
    if (theme === "light" && tone === "static") return LightStaticColors
    if (theme === "light" && tone === "dynamic") return LightDynamicColors
    return DarkStaticColors
  }

    readonly property string surface: currentTheme.surface.a10
    readonly property string surfaceBorder: currentTheme.surface.a40
    readonly property string surfaceBackground: currentTheme.surface.a20
    readonly property string surfaceHovered: currentTheme.surface.a30
    readonly property string surfaceClicked: currentTheme.surface.a50

    readonly property string surfaceText: currentTheme.surface.a60
    readonly property string surfaceTextUnavailable: currentTheme.surface.a50
    readonly property string surfaceTextHovered: white

    readonly property string primary: currentTheme.primary.a10
    readonly property string primaryBorder: currentTheme.primary.a40
    readonly property string primaryBackground: currentTheme.primary.a20
    readonly property string primaryHovered: currentTheme.primary.a30
    readonly property string primaryClicked: currentTheme.primary.a50

    // semantic colors
    readonly property string success: currentTheme.success.a10
    readonly property string successText: currentTheme.success.a20
    readonly property string successBackground: currentTheme.success.a30

    readonly property string danger: currentTheme.danger.a10
    readonly property string dangerText: currentTheme.danger.a20
    readonly property string dangerBackground: currentTheme.danger.a30

    readonly property string warning: currentTheme.warning.a10
    readonly property string warningText: currentTheme.warning.a20
    readonly property string warningBackground: currentTheme.warning.a30

    readonly property string info: currentTheme.info.a10
    readonly property string infoText: currentTheme.info.a20
    readonly property string infoBackground: currentTheme.info.a30



}
