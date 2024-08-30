import QtQuick
import QtQuick.Controls 2.15
Item{
    Rectangle{
        id:backButton
        width: parent.width*0.1
        height: parent.height*0.1
        z: 5
        Label{
            id: backlabel
            anchors.centerIn: parent
            Text {
                id: back
                anchors.centerIn: parent
                text: "<<BACK"
                color: "green"
                font.pointSize: Math.max(Math.min(backButton.parent.width,backButton. parent.height) * 0.02,1)
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        back.color="#556b2f"
                    }
                    onExited: {
                        back.color="#193c2f"
                    }
                }
            }
        }
        MouseArea{
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: {
                stack.pop()
            }
        }
    }
    Rectangle{
        id: re
        width: parent.width*0.6
        height: parent.height*0.5
        color: "#d1f2eb"
        anchors.centerIn: parent
        radius: parent.height*0.1
        Column{
            spacing: Math.min(parent.width,parent.height)*0.01
            anchors.centerIn:parent
            Image {
                id: ima
                source: "..//Logo//cash.png"
                width: re.width*0.3
                height: ima.width
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                id: tex
                text: "Hand your cash to casher\n              Thank you"
                font.bold: true
                color: "#eb984e"
                font.pixelSize: Math.min(parent.width,parent.height)*0.1
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
