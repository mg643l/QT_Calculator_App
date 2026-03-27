

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
        spacing: 8

        Button {
            id: percentButton
            width: 70
            height: 50
            text: qsTr("%")
        }
        Button {
            id: ceButton
            width: 70
            height: 50
            text: qsTr("CE")
        }
        Button {
            id: cButton
            width: 70
            height: 50
            text: qsTr("C")
        }
        Button {
            id: backButton
            width: 70
            height: 50
            text: qsTr("Back")
        }
        Button {
            id: reciprocalButton
            width: 70
            height: 50
            text: qsTr("1/x")
        }
        Button {
            id: squaredButton
            width: 70
            height: 50
            text: qsTr("x^2")
        }
        Button {
            id: sqrtButton
            width: 70
            height: 50
            text: qsTr("sqrt")
        }
        Button {
            id: divideButton
            width: 70
            height: 50
            text: qsTr("/")
        }
        Button {
            id: sevenButton
            width: 70
            height: 50
            text: qsTr("7")
        }
        Button {
            id: eightButton
            width: 70
            height: 50
            text: qsTr("8")
        }
        Button {
            id: nineButton
            width: 70
            height: 50
            text: qsTr("9")
        }
        Button {
            id: multiplyButton
            width: 70
            height: 50
            text: qsTr("*")
        }
        Button {
            id: fourButton
            width: 70
            height: 50
            text: qsTr("4")
        }
        Button {
            id: fiveButton
            width: 70
            height: 50
            text: qsTr("5")
        }
        Button {
            id: sixButton
            width: 70
            height: 50
            text: qsTr("6")
        }
        Button {
            id: minusButton
            width: 70
            height: 50
            text: qsTr("-")
        }
        Button {
            id: oneButton
            width: 70
            height: 50
            text: qsTr("1")
        }
        Button {
            id: twoButton
            width: 70
            height: 50
            text: qsTr("2")
        }
        Button {
            id: threeButton
            width: 70
            height: 50
            text: qsTr("3")
        }
        Button {
            id: plusButton
            width: 70
            height: 50
            text: qsTr("+")
        }
        Button {
            id: pmButton
            width: 70
            height: 50
            text: qsTr("+/-")
        }
        Button {
            id: zeroButton
            width: 70
            height: 50
            text: qsTr("0")
        }
        Button {
            id: decimalButton
            width: 70
            height: 50
            text: qsTr(".")
        }
        Button {
            id: equalButton
            width: 70
            height: 50
            text: qsTr("=")
        }
    }

    TextField {
        id: resultField
        width: 310
        height: 70
        scale: 1
        anchors.horizontalCenter: parent.horizontalCenter
        y: 50
        placeholderText: qsTr("Result")
        readOnly: true
        font.pixelSize: 36
        horizontalAlignment: TextInput.AlignRight
    }
}
