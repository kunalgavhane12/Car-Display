import QtQuick 2.0

Item {
    id: root
    property int value: 0

    Rectangle {
        id: speed

        property int numberIndexs: 10
        property int startAngle: 240
        property int angleLength: 25
        property int maxSpeed: 180

        anchors.centerIn: parent
        height: Math.min(root.width, root.height)
        width: height
        radius: width/2
        color: "black"
        border.color: "grey"
        border.width: speed.height * 0.02

        Repeater {
            model: speed.numberIndexs

            Item {
                height: speed.height/2
                transformOrigin: Item.Bottom
                rotation: index * speed.angleLength + speed.startAngle
                x: speed.width/2

                Rectangle {
                    height: speed.height * 0.05
                    width: height / 2
                    color: "grey"
                    antialiasing: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: speed.height * 0.03
                }

                Text {
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                    }
                    x: 0
                    y: speed.height * 0.09
                    color: "grey"
                    rotation: 360 - (index * speed.angleLength + speed.startAngle)
                    text: index * (speed.maxSpeed / (speed.numberIndexs - 1))
                    font.pixelSize: speed.height * 0.05
                    font.family: "Comic Sans MS"
                }
            }
        }
    }

// Center Circles and Needle and text
    Rectangle {
        id: id_center

        anchors.centerIn: parent
        height: speed.height*0.1
        width: height
        radius: width/2
        color: "grey"
    }

    Text {
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: speed.verticalCenter
            topMargin: speed.height * 0.1
        }
        text: "Speed\n km/h"
        color: "grey"
        font.pixelSize: speed.height * 0.1
        font.family: "Comic Sans MS"
    }

    SpeedNeedle {
        id: id_speedNeedle
        anchors {
            top: speed.top
            bottom: speed.bottom
            horizontalCenter: parent.horizontalCenter
        }
        value: root.value
        startAngle: speed.startAngle
        angleLength: speed.angleLength / (speed.maxSpeed / (speed.numberIndexs - 1))
    }
}

