import QtQuick 2.0

Item {
    id: root
    property int startAngle : 0
    property int angleLength: 0
    property int maxSpeed: 0

    Rectangle{
        width: root.height * 0.02
        height: root.height * 0.45
        color: "grey"
        anchors.horizontalCenter: root.horizontalCenter
        antialiasing: true
        y: root.height * 0.05
    }

    SequentialAnimation{
        id: fuelAnimation
        running: true
        loops: Animation.Infinite

        RotationAnimation {
            id: animation
            target: id_fuelNeedle
            from: 270
            to: 100
            direction: RotationAnimation.Clockwise
            duration: 2000
        }
        RotationAnimation {
            id: animation2
            target: id_fuelNeedle
            from: 100
            to: 270
            direction: RotationAnimation.Counterclockwise
            duration: 5000
        }
    }
}
