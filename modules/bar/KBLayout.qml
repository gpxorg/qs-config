import QtQuick

import qs.config
import qs.services

Item {
    id: root

    implicitWidth: kblayout.implicitWidth
    implicitHeight: kblayout.implicitHeight

    Text {
        id: kblayout
        text: KBLayout.layout.slice(0,2).toLowerCase()
        font.family: Appearance.font.family
        font.pointSize: Appearance.size.bar.fontSize
        font.weight: Appearance.size.bar.fontWeight
        color: Colors.surfaceText
    }
}
