import QtQuick
import QtQuick.Controls.Basic

TextField {
    id: control
    property string placeholderTittle: value
    placeholderText: placeholderTittle
    font.pixelSize: Math.min(parent.width,parent.height)*0.1
    background: Rectangle {
        color: control.enabled ? "transparent" : "#ec7063"
        border.color: control.enabled ? "#556b2f" : "#ec7063"
        radius: Math.min(parent.width,parent.height)*0.05
    }
}
