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
        id: qrholder
        width: parent.width*0.4
        height:qrholder.width
        anchors.centerIn: parent
        Image {
            id:qrdisplay
            source: "..//Logo//Qr.png"
            anchors.fill: parent
        }
    }
}
