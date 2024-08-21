import QtQuick 2.12
import QtQuick.Controls 2.15
import "CustomCumponent"
Item{
    width: parent.width
    height: parent.height
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
                font.pointSize: Math.min(backButton.parent.width,backButton. parent.height) * 0.02
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
            ListElement { imgurl:"..//FreshProductsImages//tomato.png";tittl:"Tomato(500gm)";cost:"28 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Coliflower.png";tittl:"Cauliflower(500gm)";cost:"20 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Carrate.png";tittl:"Carrots(500gm)";cost:"15 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Ginger.png";tittl:"Ginger(500gm)";cost:"40 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Cucumber.png";tittl:"Cucumber(500gm)";cost:"30 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Potato.png";tittl:"Potato(500gm)";cost:"25 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Pumpkin.png";tittl:"Pumpkin(500gm)";cost:"20 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Kiwi.png";tittl:"Kiwi(500gm)";cost:"100 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Mango.png";tittl:"Mango(500gm)";cost:"100 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Orange.png";tittl:"Orage(500gm)";cost:"55 Rs"}
            ListElement { imgurl:"..//FreshProductsImages//Piniapple.png";tittl:"Pineapple(500gm)";cost:"50 Rs"}
        }

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
                font.pointSize: Math.min(addButton.parent.width,addButton. parent.height) * 0.02
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
