

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QT_Calculator_App

Rectangle {
    id: rectangle
    width: 400
    height: 600

    color: palette.window
    anchors.fill: parent

    property alias zeroBtn: zeroButton
    property alias oneBtn: oneButton
    property alias twoBtn: twoButton
    property alias threeBtn: threeButton
    property alias fourBtn: fourButton
    property alias fiveBtn: fiveButton
    property alias sixBtn: sixButton
    property alias sevenBtn: sevenButton
    property alias eightBtn: eightButton
    property alias nineBtn: nineButton
    property alias backBtn: backButton
    property alias result: resultField

    Grid {
        id: buttonGrid
        anchors.horizontalCenter: parent.horizontalCenter
        y: 150
        columns: 4
        rows: 6
        spacing: 3

        Button {
            id: percentButton
            width: 90
            height: 70
            text: qsTr("%")
            font.pixelSize: 32
        }
        Button {
            id: ceButton
            width: 90
            height: 70
            text: qsTr("CE")
            font.pixelSize: 32
        }
        Button {
            id: cButton
            width: 90
            height: 70
            text: qsTr("C")
            font.pixelSize: 32
        }
        Button {
            id: backButton
            width: 90
            height: 70
            text: qsTr("Back")
            font.pixelSize: 28
        }
        Button {
            id: reciprocalButton
            width: 90
            height: 70
            text: qsTr("1/x")
            font.pixelSize: 32
        }
        Button {
            id: squaredButton
            width: 90
            height: 70
            text: qsTr("x^2")
            font.pixelSize: 32
        }
        Button {
            id: sqrtButton
            width: 90
            height: 70
            text: qsTr("sqrt")
            font.pixelSize: 28
        }
        Button {
            id: divideButton
            width: 90
            height: 70
            text: qsTr("/")
            font.pixelSize: 32
        }
        Button {
            id: sevenButton
            width: 90
            height: 70
            text: qsTr("7")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: eightButton
            width: 90
            height: 70
            text: qsTr("8")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: nineButton
            width: 90
            height: 70
            text: qsTr("9")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: multiplyButton
            width: 90
            height: 70
            text: qsTr("*")
            font.pixelSize: 32
        }
        Button {
            id: fourButton
            width: 90
            height: 70
            text: qsTr("4")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: fiveButton
            width: 90
            height: 70
            text: qsTr("5")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: sixButton
            width: 90
            height: 70
            text: qsTr("6")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: minusButton
            width: 90
            height: 70
            text: qsTr("-")
            font.pixelSize: 32
        }
        Button {
            id: oneButton
            width: 90
            height: 70
            text: qsTr("1")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: twoButton
            width: 90
            height: 70
            text: qsTr("2")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: threeButton
            width: 90
            height: 70
            text: qsTr("3")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: plusButton
            width: 90
            height: 70
            text: qsTr("+")
            font.pixelSize: 32
        }
        Button {
            id: pmButton
            width: 90
            height: 70
            text: qsTr("+/-")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: zeroButton
            width: 90
            height: 70
            text: qsTr("0")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: decimalButton
            width: 90
            height: 70
            text: qsTr(".")
            palette.button: "#373737"
            font.pixelSize: 32
        }
        Button {
            id: equalButton
            width: 90
            height: 70
            text: qsTr("=")
            palette.button: "#47b1e8"
            font.pixelSize: 32
            icon.color: "#1e1e1e"
        }
    }

    TextField {
        id: resultField
        width: 380
        height: 100
        scale: 1
        anchors.horizontalCenter: parent.horizontalCenter
        y: 20
        placeholderText: qsTr("Result")
        readOnly: true
        font.pixelSize: 60
        horizontalAlignment: TextInput.AlignRight
        anchors.horizontalCenterOffset: 0
    }
}
