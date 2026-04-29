// InvertedCorners.qml
import Quickshell.Wayland
import Quickshell
import QtQuick

ShellRoot {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
                bottom: true
            }

            WlrLayershell.layer: WlrLayer.Overlay
            WlrLayershell.keyboardFocus: WlrKeyboardFocus.None
            color: "transparent"
            exclusiveZone: -1
            mask: Region {}

            readonly property color cornerColor: "#000000"
            readonly property int radius: 20


            // Top-left
            Canvas {
                width: radius; height: radius
                anchors { top: parent.top; left: parent.left }
                onPaint: {
                    var ctx = getContext("2d")
                    ctx.clearRect(0, 0, width, height)
                    ctx.fillStyle = cornerColor
                    ctx.beginPath()
                    ctx.moveTo(0, 0)
                    ctx.lineTo(width, 0)
                    ctx.arcTo(0, 0, 0, height, width)
                    ctx.lineTo(0, height)
                    ctx.closePath()
                    ctx.fill()
                }
            }

            // Bottom-left
            Canvas {
                width: radius; height: radius
                anchors { bottom: parent.bottom; left: parent.left }
                onPaint: {
                    var ctx = getContext("2d")
                    ctx.clearRect(0, 0, width, height)
                    ctx.fillStyle = cornerColor
                    ctx.beginPath()
                    ctx.moveTo(0, height)
                    ctx.lineTo(width, height)
                    ctx.arcTo(0, height, 0, 0, width)
                    ctx.lineTo(0, 0)
                    ctx.closePath()
                    ctx.fill()
                }
            }

            // Top-right
            Canvas {
                width: radius; height: radius
                anchors { top: parent.top; right: parent.right }
                onPaint: {
                    var ctx = getContext("2d")
                    ctx.clearRect(0, 0, width, height)
                    ctx.fillStyle = cornerColor
                    ctx.beginPath()
                    ctx.moveTo(width, 0)
                    ctx.lineTo(0, 0)
                    ctx.arcTo(width, 0, width, height, width)
                    ctx.lineTo(width, 0)
                    ctx.fill()
                }
            }

            // Bottom-right
            Canvas {
                width: radius; height: radius
                anchors { bottom: parent.bottom; right: parent.right }
                onPaint: {
                    var ctx = getContext("2d")
                    ctx.clearRect(0, 0, width, height)
                    ctx.fillStyle = cornerColor
                    ctx.beginPath()
                    ctx.moveTo(width, height)
                    ctx.lineTo(0, height)
                    ctx.arcTo(width, height, width, 0, width)
                    ctx.lineTo(width, height)
                    ctx.fill()
                }
            }
        }
    }
}
