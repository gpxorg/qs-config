import QtQuick
import qs.services
import qs.config

Text {
  text: Clock.time
  color: Colors.fgBase
  font.family: Appearance.font.family
  font.weight: Appearance.size.bar.fontWeight
  font.pointSize: Appearance.size.bar.fontSize
}
