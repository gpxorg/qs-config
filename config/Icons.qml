pragma Singleton

import QtQuick
import Quickshell

Singleton {
  readonly property var map: ({
    "icon-not-found": "\uea24",
    "monitor": "\ue32e",
    "wifi-high": "\ue4ea",
    "wifi-medium": "\ue4ee",
    "wifi-low": "\ue4ec",
    "wifi-none": "\ue4f0",
    "wifi-slash": "\ue4f2",
    "wifi-x": "\ue4f4",
    "network": "\uedde",
    "network-slash": "\ueddc",
    "network-x": "\uedda",
  })
}
