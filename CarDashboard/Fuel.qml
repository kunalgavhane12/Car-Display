import QtQuick 2.0

Item {
    id: root
    property alias id_fuelIcon2: id_fuelIcon2

    Rectangle {
        id: fuel
        property int numberIndexs: 5
        property int startAngle: 270
        property int angleLength: 45
        property int maxFuel: 30

        anchors.centerIn: parent
        height: Math.min(root.width, root.height)
        width: height
        radius: width/2
        color: "black"
        border.color: "light green"
        border.width: fuel.height * 0.02

        Repeater {
            model: fuel.numberIndexs

            Item {
                height: fuel.height/2
                transformOrigin: Item.Bottom
                rotation: index * fuel.angleLength + fuel.startAngle
                x: fuel.width/2

                Rectangle {
                    //                    height: index % 2 == 0 ? fuel.height * 0.15 : fuel.height * 0.1
                    height: fuel.height * 0.05
                    width: height / 2
                    //                    color: index == 0 ? "red" : "light green"
                    color: "light green"
                    antialiasing: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: fuel.height * 0.03
                }
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    x: 0
                    y: fuel.height * 0.09
                    color: "white"
                    rotation: 360 - (index * fuel.angleLength + fuel.startAngle)
                    text: index * (fuel.maxSpeed / (fuel.numberIndexs - 1))
                    font.pixelSize: fuel.height * 0.05
                    font.family: "Comic Sans MS"
                }
            }
        }

        Text {
            anchors {
                top: parent.verticalCenter
                left: parent.left
                topMargin: fuel.height * 0.01
                leftMargin: fuel.height * 0.06
            }
            text: "E"
            color: "red"
            font.pixelSize: fuel.height * 0.15
            font.family: "Impact"
        }

        Text {
            anchors {
                top: parent.verticalCenter
                right: parent.right
                topMargin: fuel.height * 0.01
                rightMargin: fuel.height * 0.06
            }
            text: "F"
            color: "light green"
            font.pixelSize: fuel.height * 0.15
            font.family: "Impact"
        }
    }

    Rectangle {
        id: id_center
        anchors.centerIn: parent
        height: fuel.height * 0.1
        width: height
        radius: width/2
        color: "light green"
    }

    FuelNeedle {
        id: id_fuelNeedle
        anchors {
            top: fuel.top
            bottom: fuel.bottom
            horizontalCenter: parent.horizontalCenter
        }
        startAngle: 270
        angleLength: 45
    }

    Rectangle {
        id: id_fuelIcon1
        anchors {
            horizontalCenter: root.horizontalCenter
        }
        y: fuel.height * 0.25
        height: fuel.height * 0.075
        width: height
        color: "transparent"
        border.color: "light green"
        border.width: fuel.height * 0.01
    }

    Rectangle {
        id: id_fuelIcon2
        anchors {
            horizontalCenter: root.horizontalCenter
            top: id_fuelIcon1.bottom
        }
        height: fuel.height * 0.075
        width: height
        color: "light green"
        border.color: "light green"
        border.width: fuel.height * 0.01
    }

    Rectangle {
        id: id_fuelIcon3

        anchors {
            horizontalCenter: root.horizontalCenter
            top: id_fuelIcon2.bottom
            topMargin: fuel.height * 0.009
        }
        color: "light green"
        border.color: "light green"
        border.width: fuel.height * 0.01
    }
}
