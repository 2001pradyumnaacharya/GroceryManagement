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
            ListElement { imgurl:"..//BeakeryIteamImages//Cakes.png";tittl:"Cake(500 gm)";cost:"150 Rs"}
            ListElement { imgurl:"..//BeakeryIteamImages//Cookies.png";tittl:"Cookies(500 gm)";cost:"120 Rs"}
            ListElement { imgurl:"..//BeakeryIteamImages//Croissants.png";tittl:"Croissants(500 gm)";cost:"250 Rs"}
            ListElement { imgurl:"..//BeakeryIteamImages//Donuts.png";tittl:"Donuts(500 gm)";cost:"140 Rs"}
            ListElement { imgurl:"..//BeakeryIteamImages//Muffins.png";tittl:"Muffins(500 gm)";cost:"250 Rs"}
            ListElement { imgurl:"..//BeakeryIteamImages//Pastries.png";tittl:"Pastries(500 gm)";cost:"550 Rs"}
            ListElement { imgurl:"..//BeakeryIteamImages//Pies.png";tittl:"Pies(500 gm)";cost:"45 Rs"}
            ListElement { imgurl:"..//BeakeryIteamImages//Scones.png";tittl:"Scones(250 gm)";cost:"100 Rs"}
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
