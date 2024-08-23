import QtQuick 2.12
import QtQuick.Controls 2.15
import "CustomCumponent"
Item{
    width: parent ? parent.width : 200
    height: parent ? parent.height : 200
    Rectangle{
        width: parent.width*0.1
        height: parent.height*0.1
        id: backButton
        z: 5
        Label{
            id: backlabel
            anchors.centerIn: parent
            Text {
                id: back
                anchors.centerIn: parent
                text: "<<BACK"
                color: "green"
                font.pointSize: Math.max(Math.min(backButton.width,backButton.height) * 0.2, 1)
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
            ListElement { imgurl:"..//NutsAndDryFruitsImages//Almonds.png";tittl:"Almonds(500gm)";cost:"199 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//Cashews.png";tittl:"Cashews(500gm)";cost:"120 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//Dates.png";tittl:"Dates(500gm)";cost:"130 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//DryBerry.png";tittl:"Dry Berry(500gm)";cost:"80 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//DryedBanana.png";tittl:"Dryed Banana(500gm)";cost:"90 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//DryMango.png";tittl:"Day Mango(500gm)";cost:"60 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//Hazelnuts.png";tittl:"Hazelnuts(500gm)";cost:"50 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//Pecans.png";tittl:"Pecans(500gm)";cost:"40 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//Pistachios.png";tittl:"Pistachios(500gm)";cost:"100 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//Raisins.png";tittl:"Raisins(500gm)";cost:"55 Rs"}
            ListElement { imgurl:"..//NutsAndDryFruitsImages//Walnuts.png";tittl:"Walnuts(500gm)";cost:"99 Rs"}
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
                font.pointSize: Math.max(Math.min(addButton.width,addButton.height) * 0.2, 1)
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
