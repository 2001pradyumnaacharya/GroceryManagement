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
            ListElement { imgurl:"..//PenatryStaplesImages//BeakingSoda.png";tittl:"Beaking Soda(500gm)";cost:"28 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//BlackPepper.png";tittl:"Black Pepper(500gm)";cost:"40 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//CannadeTomato.png";tittl:"Tomato Pure(500gm)";cost:"60 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//ChatMasala.png";tittl:"Chat Masala(500gm)";cost:"35 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//ChillPowder.png";tittl:"Chill Powder(500gm)";cost:"50 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//HaldiPowder.png";tittl:"Haldi Powder(500gm)";cost:"25 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//Honey.png";tittl:"Honey(500gm)";cost:"100 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//ots.png";tittl:"Otas(500gm)";cost:"135 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//Oil.png";tittl:"Cooking Oil(500lts)";cost:"85 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//pasata.png";tittl:"Pasata(500gm)";cost:"65 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//Rajama.png";tittl:"Rajama(500gm)";cost:"95 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//rice.png";tittl:"Rice(500gm)";cost:"120 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//salt.png";tittl:"Salt(500gm)";cost:"23 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//SoyaChunks.png";tittl:"Soya Chunks(500gm)";cost:"140 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//sugar.png";tittl:"Sugar(500gm)";cost:"90 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//TeaPowder.png";tittl:"Tea Powder(500gm)";cost:"25 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//Viniger.png";tittl:"Viniger(500gm)";cost:"45 Rs"}
            ListElement { imgurl:"..//PenatryStaplesImages//wheatFlour.png";tittl:"Wheat Flour(500gm)";cost:"55 Rs"}
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
