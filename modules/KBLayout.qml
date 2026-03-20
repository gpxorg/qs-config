import QtQuick
import Quickshell
import Quickshell.Hyprland

Item {
    id: root

    implicitWidth: kblayout.implicitWidth
    implicitHeight: kblayout.implicitHeight
    property string layout: "English (US)"
    Connections {
        target: Hyprland
        function onRawEvent(event) {
            console.log("event fired: " + event.name)
            if (event.name === "activelayout") {
                root.layout = event.data.split(",")[1]
                console.log("layout set to: " + root.layout)
            }
        }
    }
    Text {
        id: kblayout
        text: root.layout.slice(0,2).toLowerCase()
        font.weight: 600
        color: "#ffffff"
    }
}
