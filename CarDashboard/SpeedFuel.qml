import QtQuick 2.0

Item {
    Rectangle {
        x: 90
        y: 388
        width: 175
        height: 63
        color: "lightgray"
        border.color: "black"
        border.width: 2
        radius: 10

        Text {
            id: speedText
            text: Math.round(startAngle)+" km/h"
            font.pixelSize: 40
            anchors.centerIn: parent
        }
    }


    Rectangle {
        x: 379
        y: 388
        width: 175
        height: 63
        color: "#d3d3d3"
        radius: 10
        border.color: "#000000"
        border.width: 2
        Text {
            id: fuelText
            text: Math.round(startAngle)+" Ltr"
            font.pixelSize: 40
            anchors.centerIn: parent
        }
    }

}
