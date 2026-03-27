import QtQuick
import QtQuick.Controls

Button {
    id: control

    // Custom properties to make it reusable
    property color baseColor: "#1e1e1e"
    property color hoverColor: "#2d2d2d" // Slightly lighter
    property color pressedColor: "#252525" // Darker than hover, lighter than base

    width: 58
    height: 30

    contentItem: Text {
        text: control.text
        font: control.font
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        implicitWidth: 58
        implicitHeight: 30
        color: control.pressed ? control.pressedColor : (control.hovered ? control.hoverColor : control.baseColor)
        radius: 4

        // Optional: Smooth transition between states
        Behavior on color {
            ColorAnimation {
                duration: 100
            }
        }
    }
}
