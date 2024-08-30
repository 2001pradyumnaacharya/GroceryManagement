import QtQuick
Rectangle{
       color: "#e5e7e9"
       radius: Math.min(parent.width,parent.height)*0.02
       property string imgsource: ""
       property string rectangletittle: ""
       property string page: ""
       Column{
        anchors.centerIn: parent
        anchors.fill: parent
        anchors.margins:  Math.min(parent.width,parent.height)*0.2
        spacing: Math.min(parent.width,parent.height)*0.2
        Image {
            id: cartLogo
            source: imgsource
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width*0.5
            height: cartLogo.width
        }
        Text {
            id: tittle
            text: rectangletittle
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize:  Math.min(parent.width,parent.height)*0.2
            font.bold: true
            color: "#d35400"
        }

       }

       MouseArea {
           anchors.fill: parent
           hoverEnabled: true
           cursorShape: Qt.PointingHandCursor
           onEntered: parent.color = "#ccd1d1"
           onExited: parent.color = "#e5e7e9"
           onClicked: {
              stack.push(page)
           }
       }
    }
