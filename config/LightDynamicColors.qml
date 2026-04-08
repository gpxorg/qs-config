pragma Singleton

import Quickshell
import QtQuick

Singleton {

  readonly property var primary: QtObject {
    property string a10: "#568e3f"
    property string a20: "#4d7d39"
    property string a30: "#446d32"
    property string a40: "#3b5d2c"
    property string a50: "#324d26"
    property string a60: "#293e20"
  }

  readonly property var surface: QtObject {
    property string a10: "#ebefe6"
    property string a20: "#dfe2da"
    property string a30: "#d2d5ce"
    property string a40: "#c6c9c3"
    property string a50: "#babcb7"
    property string a60: "#aeb0ac"
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



