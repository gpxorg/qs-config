import QtQuick
import qs.config

Text {
    id: root
    property int weight: 0

    renderType: Text.NativeRendering
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter

    font {
        family: Appearance.font.family
        pixelSize: Appearance.font.small
        weight: weight === 1 ? Appearance.font.thin
              : weight === 2 ? Appearance.font.regular
              : weight === 3 ? Appearance.font.bold 
              : weight === 4 ? Appearance.font.extraBold
              : Appearance.font.regular
    }
    color: Colors.md3.on_background
}
