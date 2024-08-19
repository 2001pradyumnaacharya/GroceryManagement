import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window
import QtQuick.Controls.Basic

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    StackView{
        id: st
        anchors.fill: parent
        initialItem: lo
    }
    Rectangle {
        id: lo
        width: parent.width
        height: parent.height

        ListModel {
            id: model
            ListElement { genericName: "Fresh Produce" ;img:"GenericImage/FreshProduct.png";page:"FreshProduct.qml"}
            ListElement { genericName: "Dairy Products";img: "GenericImage/Milk.png"; page: "DairyProducts.qml" }
            ListElement { genericName: "Bakery Items" ; img: "GenericImage/Beakry.png"; page: "BakeryItems.qml" }
            ListElement { genericName: "Pantry Staples"; img: "GenericImage/panarty.png"; page: "PantryStaples.qml" }
            ListElement { genericName: "Beverages" ; img: "GenericImage/Beveriges.png"; page: "Beverages.qml" }
             ListElement { genericName: "Nuts Dry Fruits"; img: "GenericImage/Nuts.png"; page: "NutsDryFruits.qml" }
        }

        GridView {
            id:grid
            anchors.fill: parent
            anchors.centerIn: parent
            anchors.leftMargin: parent.width*0.17
            anchors.margins: 10
            cellWidth: Math.min(parent.width*0.29,300)+10
            cellHeight: Math.min(parent.height*0.25,270)+10
            model: model
            delegate: GrideRectangle {
                width: Math.min(grid.width*0.29,300)
                height: Math.min(grid.height*0.25,270)
                tittle: genericName
                imageUrl:img
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        st.push(page)
                    }
                }
            }
        }
    }
    Component{
        id: ll
        Loader{
            source: "LL.qml"
        }
    }
}
