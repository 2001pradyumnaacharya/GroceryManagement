import QtQuick 2.12
import QtQuick.Controls 2.15
import "CustomCumponent"
Item{
    width: parent.width
    height: parent.height
    Rectangle{
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
                font.pointSize: Math.min(griderectangle.parent.width,griderectangle. parent.height) * 0.07
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
            ListElement { imgurl:"..//BeveragesImages//cococola.png";tittl:"Cocola(200 ml)";cost:"120 Rs"}
            ListElement { imgurl:"..//BeveragesImages//coffee.png";tittl:"Coffee(200 ml)";cost:"70 Rs"}
            ListElement { imgurl:"..//BeveragesImages//EnergyDrinks.png";tittl:"Red Bull(200 ml)";cost:"150 Rs"}
            ListElement { imgurl:"..//BeveragesImages//HotChocolate.png";tittl:"Hot Chocolate(200 ml)";cost:"80 Rs"}
            ListElement { imgurl:"..//BeveragesImages//IcedTea.png";tittl:"Ice Tea(200 ml)";cost:"90 Rs"}
            ListElement { imgurl:"..//BeveragesImages//Juice.png";tittl:"Juice(200 ml)";cost:"75 Rs"}
            ListElement { imgurl:"..//BeveragesImages//Lemonade (1).png";tittl:"Lemonade(100 ml)";cost:"40 Rs"}
            ListElement { imgurl:"..//BeveragesImages//Smoothies.png";tittl:"Smoothies(100 ml)";cost:"60 Rs"}
            ListElement { imgurl:"..//BeveragesImages//Tea.png";tittl:"Tea(100 ml)";cost:"102 Rs"}
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
                font.pointSize: Math.min(griderectangle.parent.width,griderectangle. parent.height) * 0.07
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
