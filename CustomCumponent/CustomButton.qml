import QtQuick 2.15

Rectangle {
    id: cbutton
    color: "#556b2f"
    radius: Math.min(parent.width,parent.height)*0.1
    property string buttontittle: ""
    Text {
        anchors.centerIn: parent
        text: buttontittle
        font.pixelSize:  Math.min(parent.width,parent.height)*0.3
        color: "white"
    }
    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onEntered: {
            cbutton.color="#556b2f"
        }
        onExited: {
            cbutton.color="#193c2f"
        }
    }
}
