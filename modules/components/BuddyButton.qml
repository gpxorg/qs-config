pragma ComponentBehavior: Bound

import QtQuick
import qs.config

Button {
    id: root
    property int hPadding: 16
    property int vPadding: 8
    property alias content: root.text
    property alias action: root.onClicked

}
