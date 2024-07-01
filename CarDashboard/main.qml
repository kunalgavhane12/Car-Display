import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Car Dashboard")

    property int startAngle : 0
    property int angleLength: 0
    property int maxSpeed: 0

    Rectangle{
        id: speedArea
        x: 59
        y: 117
        width: 256
        height: 256
        color: "black"
        radius: width/2
        z: 1

        Speed{
            anchors.fill: parent
        }
    }

    Rectangle{
        id: fuelArea
        anchors.bottom: speedArea.bottom
        x: parent.width - parent.width / 2.5
        width: 256
        height: 256
        color: "black"
        radius:  width / 2
        z: 1

        Fuel{
            anchors.fill : parent
        }

    }

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
            text: Math.round(startAngle.rotation)+" km/h"
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
            text: Math.round(startAngle.rotation)+" Ltr"
            font.pixelSize: 40
            anchors.centerIn: parent
        }
    }


}

