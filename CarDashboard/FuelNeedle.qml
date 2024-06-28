import QtQuick 2.0

Item {
    id: root

    property int  value: 0
    property int startAngle: 0
    property int angleLength: 0

    Rectangle{
        width: root.height * 0.05
        height: root.height * 0.45
        color: "grey"
        anchors.horizontalCenter: root.horizontalCenter

        antialiasing: true
        y: root.height * 0.05

    }

    rotation: value * startAngle * angleLength

    antialiasing: true

    Behavior on rotation {
        SmoothedAnimation{
            velocity: 50
        }
    }

}
