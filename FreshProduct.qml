import QtQuick 2.12
import QtQuick.Controls 2.15

Rectangle {
    id: lo
    width: parent.width * 0.9
    height: parent.height * 0.9
    clip: true
    Rectangle{
        width: parent.width*0.2
        height: parent.height*0.1
        Label{
            id: backlabel
            anchors.centerIn: parent
            Text {
                id: back
                anchors.centerIn: parent
                text: "<<BACK"
                color: "green"
            }
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                st.pop()
            }
        }
    }
    ListModel {
        id: mo
        ListElement { genericName: "pink" }
        ListElement { genericName: "black" }
        ListElement { genericName: "pink" }
        ListElement { genericName: "black" }
        ListElement { genericName: "pink" }
    }

    GridView {
        id:grid
        anchors.fill: parent
        anchors.leftMargin: parent.width*0.17
        anchors.margins: 10
        cellWidth: Math.min(parent.width*0.29,300)+10
        cellHeight: Math.min(parent.height*0.25,270)+10
        model: mo
        delegate: Products {
            width: Math.min(grid.width*0.29,300)
            height: Math.min(grid.height*0.25,270)
            tittle: genericName
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    st.push(pa)
                }
            }

        }
    }
}
