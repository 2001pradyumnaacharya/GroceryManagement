import QtQuick 2.12
import QtQuick.Controls 2.15
import "CustomCumponent"
Item{
    width: parent ? parent.width : 200
    height: parent ? parent.height : 200
    Rectangle{
        id: backRect
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
                font.pointSize: Math.max(Math.min(backRect.width,backRect.height) * 0.2, 1)
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
        Component.onCompleted: {
            var jsonData = middle.jsonLoader("PantryStaples");
                var products = JSON.parse(jsonData);
                model.clear();
                for (var i = 0; i < products.length; i++) {
                    var product = products[i];
                    product.cost = +product.cost;
                    model.append(product);
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
            onClicked: {
                for (var i = 0; i < grid.count; i++) {
                    var item = grid.itemAtIndex(i);
                    if (item.quentitey > 0) {
                        console.log("quentitey: ", item.quentitey,
                                    "imageUrl: ", item.imageUrl,
                                    "tittleWtQuentity: ", item.tittleWtQuentity,
                                    "Totalprice: ",  item.quentitey * item.price,
                                    "Price: ", item.price);
                    }
                }
            }
        }
    }
}
