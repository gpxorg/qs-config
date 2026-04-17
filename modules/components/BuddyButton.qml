import QtQuick
import QtQuick.Layouts

import qs.config

Item {
    id: root

    property string variant: "filled"
    property bool unavailable: false
    property bool active: false

    signal clicked()

    implicitWidth:  inner.implicitWidth  + paddingX * 2
    implicitHeight: inner.implicitHeight + paddingY * 2

    property real paddingX: 10
    property real paddingY: 4
    property real radius: 10

    readonly property bool filled: variant === "filled"
    readonly property bool isText: variant === "text"

    readonly property bool hovered: area.containsMouse && !unavailable

    default property alias content: inner.data

    opacity: unavailable ? 0.4 : 1.0
    Behavior on opacity { NumberAnimation { duration: 150 } }

    BuddyRect {
        id: bg
        anchors.fill: parent
        radius: root.radius

        color: {
            if (unavailable) return filled ? Colors.surfaceBackground : "transparent"
            if (filled)      return hovered ? Colors.primaryBackground : Colors.primary
            /* text */       return (hovered || active) ? Colors.surfaceBackground : "transparent"
        }

        border.width: (isText && active) ? 1.5 : 0
        border.color: (isText && active) ? Colors.surfaceBorder : "transparent"

        Behavior on color        { ColorAnimation { duration: 150 } }
        Behavior on border.color { ColorAnimation { duration: 150 } }
        Behavior on border.width { NumberAnimation { duration: 150 } }
    }

    RowLayout {
        id: inner
        anchors.centerIn: parent
        spacing: 6
    }

    MouseArea {
        id: area
        anchors.fill: parent
        hoverEnabled: true
        enabled: !unavailable
        cursorShape: unavailable ? Qt.ForbiddenCursor : Qt.PointingHandCursor
        onClicked: root.clicked()
    }
}
