import QtQuick 2.12
import QtQuick.Controls 2.15
import "CustomCumponent"
Item {
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
        id: rectangleholder
        width: parent.width
        height: parent.height
        Row{
            width: parent.width*0.5
            height: parent.height*0.5
            anchors.centerIn: parent
            spacing: 20
            PayRect{
                id: card
                width: parent.width*0.3
                height: parent.height*0.6
                imgsource:"..//Logo//card.png"
                rectangletittle: "Card Pay"
                page:"..//CustomCumponent//CardPayment.qml"
            }
            PayRect{
                id: qr
                width: parent.width*0.3
                height: parent.height*0.6
                imgsource:"..//Logo//Qr.png"
                rectangletittle: "Qr Pay"
                page:"..//CustomCumponent//QrPay.qml"
            }
            PayRect{
                id: cash
                width: parent.width*0.3
                height: parent.height*0.6
                imgsource:"..//Logo//cash.png"
                rectangletittle: "Cash Pay"
                page: "..//CustomCumponent//Cash.qml"
            }
        }
    }
}
