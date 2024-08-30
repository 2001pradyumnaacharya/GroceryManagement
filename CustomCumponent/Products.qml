import QtQuick 2.12

Item {
    id: products
    width: parent.width
    height: parent.height
    property string imageUrl: ""
    property string tittleWtQuentity: ""
    property int price: 0
    property int quentitey: spinBox.count

    Rectangle {
        id: griderectangle
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        color: "#e5e7e9"
        clip: true
        radius: 20

        Column {
            anchors.centerIn: parent
            spacing: 5

            Image {
                id: iimage
                source: imageUrl
                width: griderectangle.width * 0.4
                height: griderectangle.height * 0.4
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Current quantity:", quentitey)
                    }
                }
            }

            Text {
                text: tittleWtQuentity
                font.pointSize: Math.max(Math.min(products.width, products.height) * 0.07, 1)
                font.bold: true
                color: "#d35400"
            }

            Text {
                 text: price + " Rs"
                font.pointSize: Math.max(Math.min(products.width, products.height) * 0.06, 1)
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#d35400"
            }

            Rectangle {
                width: griderectangle.width * 0.5
                height: griderectangle.height * 0.2
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#d35400"

                SpinBoxToogle {
                    id: spinBox
                }
            }
            // Rectangle{
            //     width: 15
            //     height: 15
            //     color: "orange"
            //     anchors.horizontalCenter: parent.horizontalCenter
            //     MouseArea{
            //     anchors.fill: parent
            //     onClicked: {
            //     console.log("quentitey: ",quentitey)
            //     }
            //     }
            // }
        }
    }
}
