import QtQuick
import qs.services
import qs.misc

Text {
  text: Clock.time
  color: Colors.fgBase
  font.family: Appearance.font.family
  font.weight: Appearance.size.bar.textWeight
  font.pointSize: Appearance.size.bar.textSize
}
