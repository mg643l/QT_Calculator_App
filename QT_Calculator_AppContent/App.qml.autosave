import QtQuick
import QT_Calculator_App

Window {
    width: 400
    height: 600
    minimumWidth: 400
    minimumHeight: 600
    maximumWidth: 400
    maximumHeight: 600
    visible: true
    title: "QT_Calculator_App"

    CalculatorLogic {
        id: logic
        onDisplayChanged: (newDisplay) => mainScreen.result.text = newDisplay
    }

    Screen01 {
        id: mainScreen
        anchors.centerIn: parent

        Component.onCompleted: mainScreen.result.text = "0"

        zeroBtn.onClicked:  logic.digitPressed(0)
        oneBtn.onClicked:   logic.digitPressed(1)
        twoBtn.onClicked:   logic.digitPressed(2)
        threeBtn.onClicked: logic.digitPressed(3)
        fourBtn.onClicked:  logic.digitPressed(4)
        fiveBtn.onClicked:  logic.digitPressed(5)
        sixBtn.onClicked:   logic.digitPressed(6)
        sevenBtn.onClicked: logic.digitPressed(7)
        eightBtn.onClicked: logic.digitPressed(8)
        nineBtn.onClicked:  logic.digitPressed(9)

        backBtn.onClicked:  logic.backspace()
    }
}
