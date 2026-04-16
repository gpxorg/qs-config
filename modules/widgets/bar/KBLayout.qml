import QtQuick

import qs.config
import qs.services
import qs.modules.components

Item {
    id: root

    implicitWidth: kblayout.implicitWidth
    implicitHeight: kblayout.implicitHeight

    BuddyText {
        id: kblayout
        text: KBLayout.layout.slice(0,2).toLowerCase()
    }
}
