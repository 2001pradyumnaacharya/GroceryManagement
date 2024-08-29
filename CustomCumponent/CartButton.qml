import QtQuick 2.12
Rectangle{
    id: cartButton
    width: parent.width*0.06
    height: parent.width*0.06
    color: "#e5e7e9"
    radius: Math.min(parent.width,parent.height)*0.02
    anchors.margins: Math.min(parent.width,parent.height)*0.02
    anchors.top: parent.top
    anchors.right: parent.right
    Image {
        id: cartLogo
        source: "..//Logo//cartlogo.png"
        anchors.fill: parent
    }
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onEntered: cartButton.color = "#ccd1d1"
        onExited: cartButton.color = "#e5e7e9"
        onClicked: {
           stack.push("..//Cart.qml")
        }
    }
}

