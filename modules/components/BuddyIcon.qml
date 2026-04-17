import QtQuick
import qs.config
import qs.modules.components

BuddyText {
    id: root

    property string icon: "" 
    property string variant: "Regular"

    text: Icons.map[icon] ?? Icons.map["icon-not-found"]
    font.family: Appearance.icon.family + (variant === "Regular" ? "" : "-" + variant)
    font.pixelSize: Appearance.icon.small
    font.weight: Appearance.font.regular
}
