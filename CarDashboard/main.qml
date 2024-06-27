import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Car Dashboard")

    property int value: 0
    property int startAngle : 0
    property double angleLength: 0
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

    SpeedFuel{

    }


}

