

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
    height: 620

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
    property alias decimalBtn: decimalButton
    property alias plusBtn: plusButton
    property alias minusBtn: minusButton
    property alias multiplyBtn: multiplyButton
    property alias divideBtn: divideButton
    property alias secondResult: secondField

    TextField {
        id: resultField
        width: 380
        height: 85
        scale: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: memoryRow.top
        anchors.bottomMargin: 10
        placeholderText: qsTr("Result")
        readOnly: true
        font.pixelSize: 60
        horizontalAlignment: TextInput.AlignRight
        anchors.horizontalCenterOffset: 0
    }

    TextField {
        id: secondField
        width: 380
        height: 40
        scale: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: resultField.top
        anchors.bottomMargin: 6
        placeholderText: qsTr("")
        readOnly: true
        font.pixelSize: 15
        horizontalAlignment: TextInput.AlignRight
        anchors.horizontalCenterOffset: 0
    }

    Row {
        id: memoryRow
        spacing: 5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: buttonGrid.top
        anchors.bottomMargin: 5

        MemoryButton {
            id: memClear
            text: "MC"
        }
        MemoryButton {
            id: memRecall
            text: "MR"
        }
        MemoryButton {
            id: memAdd
            text: "M+"
        }
        MemoryButton {
            id: memSub
            text: "M-"
        }
        MemoryButton {
            id: memStore
            text: "MS"
        }
        MemoryButton {
            id: memVault
            text: "Mv"
        }
    }

    Grid {
        id: buttonGrid
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
        columns: 4
        rows: 6
        spacing: 3

        // Functional buttons (using defaults)
        CalcButton {
            id: percentButton
            text: "%"
        }
        CalcButton {
            id: ceButton
            text: "CE"
        }
        CalcButton {
            id: cButton
            text: "C"
        }
        CalcButton {
            id: backButton
            text: "Back"
            font.pixelSize: 28
        }

        // Math operation buttons
        CalcButton {
            id: reciprocalButton
            text: "1/x"
        }
        CalcButton {
            id: squaredButton
            text: "x^2"
        }
        CalcButton {
            id: sqrtButton
            text: "sqrt"
            font.pixelSize: 28
        }
        CalcButton {
            id: divideButton
            text: "/"
        }

        // Number buttons (overriding with your specific grey)
        CalcButton {
            id: sevenButton
            text: "7"
            bgColor: "#373737"
        }
        CalcButton {
            id: eightButton
            text: "8"
            bgColor: "#373737"
        }
        CalcButton {
            id: nineButton
            text: "9"
            bgColor: "#373737"
        }
        CalcButton {
            id: multiplyButton
            text: "*"
        }

        CalcButton {
            id: fourButton
            text: "4"
            bgColor: "#373737"
        }
        CalcButton {
            id: fiveButton
            text: "5"
            bgColor: "#373737"
        }
        CalcButton {
            id: sixButton
            text: "6"
            bgColor: "#373737"
        }
        CalcButton {
            id: minusButton
            text: "-"
        }

        CalcButton {
            id: oneButton
            text: "1"
            bgColor: "#373737"
        }
        CalcButton {
            id: twoButton
            text: "2"
            bgColor: "#373737"
        }
        CalcButton {
            id: threeButton
            text: "3"
            bgColor: "#373737"
        }
        CalcButton {
            id: plusButton
            text: "+"
        }

        CalcButton {
            id: pmButton
            text: "+/-"
            bgColor: "#373737"
        }
        CalcButton {
            id: zeroButton
            text: "0"
            bgColor: "#373737"
        }
        CalcButton {
            id: decimalButton
            text: "."
            bgColor: "#373737"
        }

        // Blue Equal button
        CalcButton {
            id: equalButton
            text: "="
            bgColor: "#47b1e8"
            hoverColor: "#6cc4f5"
            textColor: "#1e1e1e"
        }
    }
}
