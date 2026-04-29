import QtQuick
import QtQuick.Layouts
import qs.config

Rectangle {
  id: root

  default property alias content: innerLayout.children

  property int padding: 8
  property int spacing: 6

  implicitHeight: Appearance.size.bar.height - 8
  implicitWidth: innerLayout.implicitWidth + padding * 2

  color: "transparent" 
  radius: 9
  border {
    width: 1
    color: "transparent"
  }

  RowLayout {
    id: innerLayout
    anchors.centerIn: parent
    spacing: root.spacing
  }
}
