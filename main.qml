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
        Component.onCompleted: {
            var jsonData = middle. jsonGenericLoader();
                var products = JSON.parse(jsonData);
                model.clear();
                for (var i = 0; i < products.length; i++) {
                    var product = products[i];
                    product.cost = +product.cost;
                    model.append(product);
                }
        }
    }
}

