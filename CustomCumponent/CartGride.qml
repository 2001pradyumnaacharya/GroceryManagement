import QtQuick 2.12

Item {
    id: sq
    width: parent.width*0.29
    height: parent.height*0.5
    property string imageUrl: ""
    property string tittle: ""
    property int totalPrice: 0
    Rectangle {
        id: griderectangle
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        color: "#e5e7e9"
        radius: 20
        Column{
            anchors.centerIn: parent
            spacing: 10
            Image {
                id: iimage
                source: imageUrl
                width: griderectangle.parent.width * 0.4
                height: griderectangle.parent.height * 0.4
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: tittle
                font.pointSize: Math.max(Math.min(parent.width, parent.height) * 0.1, 1)
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                color: "#d35400"
            }
            Text {
                text: totalPrice+" Rs"
                font.pointSize: Math.max(Math.min(parent.width, parent.height) * 0.09, 1)
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                color: "#d35400"
            }
        }
    }
    MouseArea{
        anchors.fill: griderectangle
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onEntered: {
            griderectangle.color="#ccd1d1"
        }
        onExited: {
            griderectangle.color="#e5e7e9"
        }
        onClicked: {
            middle.emptyJsonFile()
        }

    }
}
