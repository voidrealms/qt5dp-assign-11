import QtQuick 2.0

Item {
    property bool isOn

    onIsOnChanged: {
       if(isOn)
       {
           console.log("ON")
           state = "on"
       }
       else
       {
           console.log("OFF")
           state = "off"
       }
    }

    id: element
    width: 200
    height: 200

    Rectangle {
        id: rectangle
        color: "black"
        radius: width
        anchors.fill: parent
    }

    states: [
        State {
            name: "on"
            PropertyChanges {
                target: rectangle
                color: "limegreen"
            }
        },
        State {
            name: "off"
            PropertyChanges {
                target: rectangle
                color: "red"
            }
        }
    ]
}
