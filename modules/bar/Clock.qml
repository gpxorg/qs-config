import QtQuick
import qs.services
import qs.config

Item {
  id: root
  implicitWidth: clock.implicitWidth
  implicitHeight: clock.implicitHeight

  Text {
    id: clock
    text: Clock.time
    color: Colors.surfaceText
    font.family: Appearance.font.family
    font.weight: Appearance.size.bar.fontWeight
    font.pointSize: Appearance.size.bar.fontSize
  }
}
