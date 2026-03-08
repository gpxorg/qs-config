import QtQuick
import Quickshell
import Quickshell.Services.Pipewire

Scope {
    id: root
    property var sink: Pipewire.defaultAudioSink

    Variants {
        model: Quickshell.screens
        FloatingWindow {
            id: osd
            visible: false
        }
    }
    Timer {
        id: hideTimer
        interval: 2000
        onTriggered: osd.visible = false
    }

}
