import QtQuick 2.0

Item {
    id: root
    property int value: 0
    property int startAngle : 0
    property double angleLength: 0
    property int maxSpeed: 0

    Rectangle {
        width: root.height * 0.02
        height: root.height * 0.45
        color: "grey"
        anchors {
            horizontalCenter: root.horizontalCenter
        }
        antialiasing: true
        y: root.height * 0.05

    }
    RotationAnimation {
        id: animation1
        target: id_speedNeedle
        loops: Animation.Infinite
        from: 245
        to: 100
        direction: RotationAnimation.Clockwise
        duration: 2000
        running: true
    }

    RotationAnimation {
        id: animation2
        target: id_speedNeedle
        loops: Animation.Infinite
        from: 100
        to: 245
        direction: RotationAnimation.Counterclockwise
        duration: 5000
        running: true
    }
        rotation: value * angleLength + startAngle

        antialiasing: true

        Behavior on rotation {
            SmoothedAnimation { velocity: 50 }
        }
}
