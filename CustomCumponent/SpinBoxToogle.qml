import QtQuick 2.12
import QtQuick.Controls 2.15
Item {
    width: parent.width
    height: parent.height
    property int spinboxValue: 1
    anchors.centerIn: parent
    Rectangle {
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        color: "#fff8dc"
        Rectangle {
            id: addButton
            color: "#193c2f"
            width: parent.width*0.5
            height: parent.height*0.6
            anchors.centerIn: parent
            visible: spinboxValue >= 1
            radius: 9

            Text {
                text: "+"
                anchors.centerIn: parent
                color: "white"
                font.bold: true
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
                    spinbox.visible = true
                    addButton.visible = false
                    spinbox.value = 1
                }
            }
        }

        SpinBox {
            id: spinbox
            from: 0
            value: 1
            width: parent.width-10
            height: parent.height-10
            anchors.centerIn: parent
            visible: false
            onValueChanged: {
                if (value < 1) {
                    spinbox.visible = false
                    addButton.visible = true
                }
            }
        }
    }
}

