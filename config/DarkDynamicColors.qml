pragma Singleton

import Quickshell
import QtQuick

Singleton {


  readonly property var primary: QtObject {
    property string a10: "#da8346"
    property string a20: "#e0915a"
    property string a30: "#e69e6e"
    property string a40: "#ebac82"
    property string a50: "#f0b996"
    property string a60: "#f4c7aa"
  }

  readonly property var surface: QtObject {
    property string a10: "#1a120c"
    property string a20: "#2f2824"
    property string a30: "#453f3b"
    property string a40: "#5d5754"
    property string a50: "#76716e"
    property string a60: "#908b89"
  }

  readonly property var success: QtObject {
    property string a10: "#22946e"
    property string a20: "#47d5a6"
    property string a30: "#9ae8ce"
  }

  readonly property var warning: QtObject {
    property string a10: "#a87a2a"
    property string a20: "#d7ac61"
    property string a30: "#ecd7b2"
  }

  readonly property var danger: QtObject {
    property string a10: "#9c2121"
    property string a20: "#d94a4a"
    property string a30: "#eb9e9e"
  }

  readonly property var info: QtObject {
    property string a10: "#21498a"
    property string a20: "#4077d1"
    property string a30: "#92b2e5"
  }

  readonly property var text: QtObject {
    property string a10: "#ffffff"
    property string a20: "#000000"
  }
}
