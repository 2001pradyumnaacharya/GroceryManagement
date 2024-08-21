import QtQuick 2.12
import QtQuick.Controls 2.15
import "CustomCumponent"
Item{
    width: parent.width
    height: parent.height
    Rectangle{
        id: backButton
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
                font.pointSize: Math.min(backButton.width,backButton.height) * 0.2
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
        id: freshProductGride
        width: parent.width * 0.9
        height: parent.height * 0.9
        anchors.topMargin: 200
        clip: true
        ListModel {
            id: model
            ListElement { imgurl:"..//DiaryProductImages//Butter.png";tittl:"Butter(500 gm)";cost:"208 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//ButterMilk.png";tittl:"ButterMilk(1 ltr)";cost:"20 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//Cheese.png";tittl:"Cheese(500 gm)";cost:"250 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//cream.png";tittl:"cream(500 gm)";cost:"140 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//Ghee.png";tittl:"Ghee(500 gm)";cost:"350 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//IceCream.png";tittl:"IceCream(500 gm)";cost:"250 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//Milk.png";tittl:"Milk(1 ltr)";cost:"45 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//Paneer.png";tittl:"Paneer(250 gm)";cost:"100 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//Yougurt.png";tittl:"Yougurt(500 gm)";cost:"40 Rs"}
            ListElement { imgurl:"..//DiaryProductImages//WheyProtien.png";tittl:"WheyProtien(1 Kg)";cost:"2000 Rs"}        }

        GridView {
            id:grid
            anchors.fill: parent
            anchors.leftMargin: parent.width*0.17
            anchors.margins: 10
            cellWidth:grid.width*0.29+10
            cellHeight:grid.height*0.35+10
            model: model
            delegate: Products {
                width:grid.width*0.29
                height:grid.height*0.35
                imageUrl:imgurl
                tittleWtQuentity:tittl
                price:cost

            }
        }
    }
    Rectangle{
        id: addButton
        width:parent.width*0.9
        height: parent.height*0.1
        radius: 9
        color: "#193c2f"
        anchors.bottomMargin: 10
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Label{
            anchors.centerIn: parent
            Text {
                id: addcart
                text: "Add To Cart"
                anchors.centerIn: parent
                color: "White"
                font.pointSize: Math.min(addButton.width,addButton.height) * 0.2
                font.bold: true
            }
        }
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onEntered: {
                addButton.color="#556b2f"
            }
            onExited: {
                addButton.color="#193c2f"
            }
        }
    }
}
