pragma Singleton

import Quickshell
import QtQuick

Singleton {

  readonly property var primary: QtObject {
    property string a10: "#75a57b"
    property string a20: "#84af89"
    property string a30: "#93b997"
    property string a40: "#a2c3a5"
    property string a50: "#b2cdb4"
    property string a60: "#c1d7c2"
  }

  readonly property var surface: QtObject {
    property string a10: "#1b1f1c"
    property string a20: "#303431"
    property string a30: "#464a47"
    property string a40: "#5e615f"
    property string a50: "#777977"
    property string a60: "#909391"
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

}
