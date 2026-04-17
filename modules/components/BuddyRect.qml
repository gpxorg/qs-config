import QtQuick

import qs.config

Rectangle {
    color: "transparent"
    radius: Appearance.rounding.medium

    Behavior on color {
        ColorAnimation {
            duration: 100
            easing.type: Easing.BezierSpline
            easing.bezierCurve: [0.05, 0, 0.133, 0.06, 0.25, 1]
        }
    }
}
