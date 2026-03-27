import QtQuick
import Quickshell
import Quickshell.Hyprland
import qs.misc

Item {
    id: root

    implicitWidth: kblayout.implicitWidth
    implicitHeight: kblayout.implicitHeight
    property string layout: "English (US)"
    Connections {
        target: Hyprland
        function onRawEvent(event) {
            if (event.name === "activelayout") {
                root.layout = event.data.split(",")[1]
            }
        }
    }
    Text {
        id: kblayout
        text: root.layout.slice(0,2)
        font.family: Appearance.font.family
        font.pointSize: Appearance.font.xsmall
        font.weight: Appearance.font.bold
        color: Colors.fgBase
    }
}
