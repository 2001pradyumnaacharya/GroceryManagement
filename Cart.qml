import QtQuick 2.12
import QtQuick.Controls 2.15
import "CustomCumponent"
Item {
    Rectangle {
        id: freshProductGride
        width: parent.width * 0.9
        height: parent.height * 0.9
        anchors.topMargin: 200
        clip: true
        ListModel {
            id: modelll
        }
        GridView {
            id:grid
            anchors.fill: parent
            anchors.leftMargin: parent.width*0.17
            anchors.margins: 10
            cellWidth:grid.width*0.29+10
            cellHeight:grid.height*0.35+10
            model:modelll
            delegate: CartGride {
                id: _product
                width:grid.width*0.29
                height:grid.height*0.35
                imageUrl:imgurl
                tittle:nameOfProduct
                totalPrice: totalcost
                Rectangle{
                    id: removeButton
                    width: parent.width*0.16
                    height: parent.height*0.16
                    anchors.top: parent.top
                    anchors.leftMargin:10
                    color: "#193c2f"
                    radius: removeButton.width*0.1
                    Image {
                        id: deleteimage
                        source: "Logo//deleteLogo.png"
                        anchors.fill: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            var indextoRemove=model.index
                            modelll.remove(indextoRemove);
                        }
                    }
                }

            }
            Component.onCompleted: {
                var jsonData = middle. jsonCartLoader();
                    var products = JSON.parse(jsonData);
                    model.clear();
                    for (var i = 0; i < products.length; i++) {
                        var product = products[i];
                        product.totalcost = +product.totalcost;
                        modelll.append(product);
                    }
            }

        }
    }
    Rectangle{
        id: re
        width: parent.width*0.6
        height: parent.height*0.5
        color: "#d1f2eb"
        anchors.centerIn: parent
        radius: parent.height*0.1
        visible: modelll.count===0
        Column{
            spacing: Math.min(parent.width,parent.height)*0.01
            anchors.centerIn:parent
            Image {
                id: ima
                source: "Logo//EmptyCartLogo.png"
                width: re.width*0.3
                height: ima.width
            }
            Text {
                id: tex
                text: "Cart is Empty"
                font.bold: true
                color: "#eb984e"
                font.pixelSize: Math.min(parent.width,parent.height)*0.1
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                id: backtoShopping
                text:"Back To Shopping"
                color:"#dc7633"
                font.bold: true
                font.pixelSize: Math.min(parent.width,parent.height)*0.09
                anchors.horizontalCenter: parent.horizontalCenter
                MouseArea{
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                anchors.fill: parent
                onEntered: {
                    backtoShopping.color="#e59866"
                    backtoShopping.font.underline=true
                }
                onExited: {
                    backtoShopping.color="#dc7633"
                    backtoShopping.font.underline=false
                }
                onClicked:{
                    middle.emptyJsonFile()
                    stack.pop()
                }
                }
            }
        }
    }
}
