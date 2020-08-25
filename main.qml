import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 221
        height: 262
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10

        Light {
            id: light
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            id: row
            width: 200
            height: 400
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10

            Button {
                id: button
                text: qsTr("On")
                onClicked: light.isOn = true
            }

            Button {
                id: button1
                text: qsTr("Off")
                onClicked: light.isOn = false
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}
}
##^##*/
