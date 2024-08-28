import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window
import QtQuick.Controls.Basic
import "CustomCumponent"
Window {
    id:root
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Hello World")

    StackView{
        id: stack
        anchors.fill: parent
        initialItem: generic
    }

    Rectangle {
        id: generic
        ListModel {
            id: model
            ListElement { genericName: "Fresh Produce" ;img:"..//GenericImage/FreshProduct.png";page:"FreshProduct.qml"}
            ListElement { genericName: "Dairy Products";img: "..//GenericImage/Milk.png"; page: "DiaryProduct.qml" }
            ListElement { genericName: "Bakery Items" ; img: "..//GenericImage/Beakry.png"; page: "BeakeryProduct.qml" }
            ListElement { genericName: "Pantry Staples"; img: "..//GenericImage/panarty.png"; page: "PantryStaples.qml" }
            ListElement { genericName: "Beverages" ; img: "..//GenericImage/Beveriges.png"; page: "BeveragesProduct.qml" }
            ListElement { genericName: "Nuts Dry Fruits"; img: "..//GenericImage/Nuts.png"; page: "NutsAndDryFruits.qml" }
        }

        Grid {
            id:grid
            spacing: 10
            columns: 3
            anchors.centerIn: parent
            Repeater {
                id: gridRepeater
                model: model

                delegate: GrideRectangle {
                    id: gridItem
                    width: generic.width*0.2
                    height: gridItem.width
                    tittle: genericName
                    imageUrl:img
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            stack.push(page)
                        }
                    }
                }
            }
        }
    }
}

