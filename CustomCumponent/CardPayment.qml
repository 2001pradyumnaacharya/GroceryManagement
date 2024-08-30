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
    Rectangle {
        id: contaner
        width: parent.width*0.69
        height: parent.height*0.8
        color: "#eaecee"
        anchors.centerIn: contaner.parent
        Column{
            anchors.centerIn: parent
            spacing: 10
            Textfiled{
                id: holderName
                width: contaner.width*0.8
                height: contaner.height*0.09
                anchors.horizontalCenter: parent.horizontalCenter
                placeholderTittle:"Name of card holder"
            }
            Textfiled{
                id: cvv
                width: contaner.width*0.8
                height: contaner.height*0.09
                anchors.horizontalCenter: parent.horizontalCenter
                placeholderTittle:"CVV"
            }
            Textfiled{
                id:expDate
                width: contaner.width*0.8
                height: contaner.height*0.09
                anchors.horizontalCenter: parent.horizontalCenter
                placeholderTittle:"Expire date"
            }
            Row {
                id:rows
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter
                CustomButton {
                    id: button1
                    width: contaner.width*0.38
                    height: contaner.height*0.1
                    buttontittle:"Submit"
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        onPressed:{
                            button1.color="#193c2f"
                        }
                        onReleased: {
                            button1.color="#556b2f"
                        }onClicked: {
                            if(holderName.text==="" || cvv.text===""||expDate.text===""){
                                popupp.visible=true;
                                popupp.imageUrl="..//Logo//errormessage.png";
                                popupp.message="Fileds Should Not Be Empty";
                                popupp.popcolor="red";
                            }
                            else{
                                popupp.visible=true;
                                popupp.imageUrl="..//Logo//PaymentRecived.png";
                                popupp.message="Payment Recived";
                                popupp.popcolor="#d1f2eb";
                            }
                        }
                    }
                }
                CustomButton {
                    id: button2
                    width: contaner.width*0.38
                    height:  contaner.height*0.1
                    buttontittle:"Clear"
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        onPressed:{
                            button2.color="#193c2f"
                        }
                        onReleased: {
                            button2.color="#556b2f"
                        }
                        onClicked: {
                            holderName.text="";
                            cvv.text="";
                            expDate.text="";
                        }
                    }
                }
            }
        }
    }
    Popupmasseage{
        id: popupp
    }

}
