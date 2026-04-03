pragma Singleton

import Quickshell
import QtQuick

Singleton {

  readonly property var primary: QtObject {
    property string a10: "#b76354"
    property string a20: "#a1584b"
    property string a30: "#8c4d42"
    property string a40: "#774239"
    property string a50: "#623830"
    property string a60: "#4f2e28"
  }

  readonly property var surface: QtObject {
    property string a10: "#ffffff"
    property string a20: "#f0f0f0"
    property string a30: "#e1e1e1"
    property string a40: "#d3d3d3"
    property string a50: "#c5c5c5"
    property string a60: "#b6b6b6"
  }

  readonly property var success: QtObject {
    property string a10: "#1b7f5c"
    property string a20: "#28be8a"
    property string a30: "#58dbad"
  }

  readonly property var warning: QtObject {
    property string a10: "#b8871f"
    property string a20: "#dfae44"
    property string a30: "#ebca85"
  }

  readonly property var danger: QtObject {
    property string a10: "#b13535"
    property string a20: "#d06262"
    property string a30: "#e29d9d"
  }

  readonly property var info: QtObject {
    property string a10: "#1e56a3"
    property string a20: "#347ada"
    property string a30: "#74a4e6"
  }

  readonly property var text: QtObject {
    property string a10: "#000000"
    property string a20: "#ffffff"
  }
}

