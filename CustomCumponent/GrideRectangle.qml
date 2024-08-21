import QtQuick 2.12

Item {
    width: parent.width*0.29
    height: parent.height*0.5
    property string imageUrl: ""
    property string tittle: ""
    Rectangle {
        id: griderectangle
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        color: "#fff8dc"
        radius: 20
    Column{
        anchors.centerIn: parent
        spacing: 10
        Image {
            id: iimage
            source: imageUrl
            width: griderectangle.parent.width * 0.5
            height: griderectangle.parent.height * 0.5
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            text: tittle
            font.pointSize: Math.min(parent.width, parent.height) * 0.12
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            color: "#7cfc00"
        }
    }

    }
}
