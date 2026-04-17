import QtQuick
import qs.services
import qs.config
import qs.modules.components

Item {
  id: root
  implicitWidth: clock.implicitWidth
  implicitHeight: clock.implicitHeight

  BuddyText {
    id: clock
    text: Clock.time
    weight: 3
  }
}
