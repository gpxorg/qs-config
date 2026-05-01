import QtQuick
import QtQuick.Layouts

import qs.config

Item {
    id: root

    // "primary" | "secondary" | "outline" | "ghost" | "destructive"
    property string variant: "primary"
    property bool disabled: false

    readonly property bool hovered: area.containsMouse && !disabled
    readonly property bool pressed: area.containsPress && !disabled

    property real paddingX: 8
    property real paddingY: 4
    property real radius: 10

    implicitWidth:  inner.implicitWidth  + paddingX * 2
    implicitHeight: inner.implicitHeight + paddingY * 2

    default property alias content: inner.data
    signal clicked()

    readonly property color bgColor: {
        switch (variant) {
        case "primary":
            if (pressed) return Colors.md3.primary_fixed_dim
            if (hovered) return Colors.md3.primary_fixed
            return Colors.md3.primary_container
        case "secondary":
            if (pressed) return Colors.md3.surface_container_highest
            if (hovered) return Colors.md3.surface_container_high
            return Colors.md3.surface_container
        case "outline":
            if (pressed) return Colors.md3.surface_container
            if (hovered) return Colors.md3.surface_container_high
            return Colors.md3.surface_container
        case "ghost":
            if (pressed) return Colors.md3.surface_container
            if (hovered) return Colors.md3.surface_container_high
            return "transparent"
        case "destructive":
            if (pressed) return Colors.md3.danger_container
            if (hovered) return Colors.md3.danger_container
            return Colors.md3.danger
        default: return "transparent"
        }
    }

    readonly property color borderColor: {
        switch (variant) {
        case "outline":     return hovered ? Colors.md3.primary : Colors.md3.outline_variant
        case "primary":     return Colors.md3.outline_variant
        case "destructive": return Colors.md3.danger
        default:            return "transparent"
        }
    }

    readonly property color textColor: {
        switch (variant) {
        case "primary":     return Colors.md3.on_primary_container
        case "secondary":   return Colors.md3.on_surface_variant
        case "outline":     return hovered ? Colors.md3.primary : Colors.md3.on_surface_variant
        case "ghost":       return hovered ? Colors.md3.primary : Colors.md3.on_surface_variant
        case "destructive": return Colors.md3.on_danger
        default:            return Colors.md3.on_surface_variant
        }
    }

    opacity: disabled ? 0.5 : 1.0
    Behavior on opacity { NumberAnimation { duration: 100 } }

    Rectangle {
        id: bg
        anchors.fill: parent
        radius: root.radius
        color: root.bgColor
        border.color: root.borderColor
        border.width: (variant === "outline" || variant === "primary") ? 1 : 0
    }

    RowLayout {
        id: inner
        x: root.paddingX
        y: root.paddingY
        spacing: 6
    }

    MouseArea {
        id: area
        anchors.fill: parent
        hoverEnabled: true
        enabled: !root.disabled
        cursorShape: root.disabled ? Qt.ForbiddenCursor : Qt.PointingHandCursor
        onClicked: root.clicked()
    }
}
