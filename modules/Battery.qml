import QtQuick
import Quickshell

Item {
  id: root
  Rectangle { 
    width: 30
    height: 14
    radius: 6
    clip: true
    color: "#A1A1A1"
    Rectangle {
      radius: 8
      height: parent.height
      width: (65 / 100) * parent.width
      color: "#ffffff" 
    }
  }

  
  implicitWidth: 30
  implicitHeight:  14
}
