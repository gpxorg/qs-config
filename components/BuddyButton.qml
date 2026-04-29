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
            if (pressed) return Colors.primaryClicked
            if (hovered) return Colors.primaryHovered
            return Colors.primary
        case "secondary":
            if (pressed) return Colors.surfaceClicked
            if (hovered) return Colors.surfaceHovered
            return Colors.surfaceBackground
        case "outline":
            if (pressed) return Colors.surfaceBackground
            if (hovered) return Colors.surface
            return Colors.surfaceBackground
        case "ghost":
            if (pressed) return Colors.surfaceClicked
            if (hovered) return Colors.surfaceBackground
            return "transparent"
        case "destructive":
            if (pressed) return Colors.dangerBackground
            if (hovered) return Colors.dangerBackground
            return Colors.danger
        default: return "transparent"
        }
    }

    readonly property color borderColor: {
        switch (variant) {
        case "outline":      return hovered ? Colors.primaryBorder : Colors.surfaceBorder
        case "primary":      return Colors.primaryBorder
        case "destructive":  return Colors.danger
        default:             return "transparent"
        }
    }

    readonly property color textColor: {
        switch (variant) {
        case "primary":      return Colors.primary
        case "secondary":    return Colors.surfaceText
        case "outline":      return hovered ? Colors.primary : Colors.surfaceText
        case "ghost":        return hovered ? Colors.primary : Colors.surfaceText
        case "destructive":  return Colors.dangerText
        default:             return Colors.surfaceText
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
