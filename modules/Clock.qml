import QtQuick
import qs.services
import qs.misc

Text {
  text: Clock.time
  color: Colors.fgBase
  font.family: Appearance.font.family
  font.weight: Appearance.font.bold
  font.pointSize: Appearance.font.xsmall
}
