import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Label Özellikleri"
    color:"lightblue"

        Label {
            text:"Label Alani"
            font.pixelSize: 40
            anchors.centerIn: parent
            font.bold: true
            font.italic: true
            color: "red"
            id: label1
                Behavior on scale {
                    NumberAnimation {
                        duration: 1000
                    }
                }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    label1.scale = (label1.scale === 1 ? 1.5 : 1)

                }
            }
        }

}
