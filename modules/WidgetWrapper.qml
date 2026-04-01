
import QtQuick
import QtQuick.Layouts
import qs.misc

Rectangle {
  id: root

  default property alias content: innerLayout.children

  property int padding: 8
  property int spacing: 6

  implicitHeight: Appearance.size.bar.height - 10
  implicitWidth: innerLayout.implicitWidth + padding * 2

  color: Colors.bgSubtle
  radius: 20

  RowLayout {
    id: innerLayout
    anchors.centerIn: parent
    spacing: root.spacing
  }
  }
