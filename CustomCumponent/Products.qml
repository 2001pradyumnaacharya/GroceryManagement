import QtQuick 2.12
Item {
    id: products
    width: parent.width
    height: parent.height
    property string imageUrl: ""
    property string tittleWtQuentity: ""
    property string price: ""
    Rectangle {
        id: griderectangle
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        color: "#fff8dc"
        clip: true
        radius: 20
        Column{
            anchors.centerIn: parent
            spacing: 5
            Image {
                id: iimage
                source: imageUrl
                width: griderectangle.parent.width * 0.4
                height: griderectangle.parent.height * 0.4
                anchors.horizontalCenter: parent.horizontalCenter
            }
                    Text {
                        text: tittleWtQuentity
                        font.pointSize: Math.min(griderectangle.parent.width,griderectangle. parent.height) * 0.07
                        font.bold: true
                        color: "#00ff00"
                    }
            Text {
                text: price
                font.pointSize: Math.min(griderectangle.parent.width,griderectangle. parent.height) * 0.06
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#00ff00"
            }
            Rectangle{
                width: griderectangle.parent.width*0.5
                height: griderectangle.parent.height*0.2
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#fff8dc"
                SpinBoxToogle{}
            }
        }
    }

}

