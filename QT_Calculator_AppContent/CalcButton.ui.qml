import QtQuick
import QtQuick.Controls

Button {
    id: control

    // Custom properties for easy overrides in Screen01.ui.qml
    property color bgColor: "#2e2e2e"
    property color hoverColor: Qt.lighter(bgColor, 1.2)
    property color pressedColor: Qt.darker(bgColor, 1.2) // 40% darker than base
    property color textColor: "#ffffff"

    width: 90
    height: 60
    font.pixelSize: 32

    contentItem: Text {
        text: control.text
        font: control.font
        color: control.textColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        id: bgRect
        implicitWidth: 90
        implicitHeight: 60
        radius: 5

        // Logic priority: Pressed > Hovered > Default
        color: control.pressed ? control.pressedColor : (control.hovered ? control.hoverColor : control.bgColor)

        // Adds a smooth fade when the color changes
        Behavior on color {
            ColorAnimation {
                duration: 20
            }
        }

        // Subtle "squish" effect when pressed to give physical feedback
        scale: control.pressed ? 0.96 : 1.0
        Behavior on scale {
            NumberAnimation {
                duration: 20
            }
        }
    }
}
