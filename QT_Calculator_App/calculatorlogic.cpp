#include "calculatorlogic.h"

CalculatorLogic::CalculatorLogic(QObject *parent)
    : QObject(parent), m_display("0"), m_pendingOperator(""), m_result(0.0), m_freshStart(true) {}

void CalculatorLogic::digitPressed(int digit) {
    if (m_freshStart) {
        m_display = QString::number(digit);
        m_freshStart = false;
    } else {
        if (m_display == "0") m_display = QString::number(digit);
        else m_display += QString::number(digit);
    }
    emit displayChanged(m_display);
}

void CalculatorLogic::operatorPressed(const QString &op) {
    double currentValue = m_display.toDouble();

    if (m_pendingOperator.isEmpty()) {
        m_result = currentValue;
    } else if (!m_freshStart) {
        calculate();
    }

    m_pendingOperator = op;
    m_freshStart = true;

    emit secondaryDisplayChanged(QString::number(m_result) + " " + m_pendingOperator);
    emit displayChanged(QString::number(m_result));
}

void CalculatorLogic::equalsPressed() {
    if (m_pendingOperator.isEmpty()) return;
    calculate();
    emit displayChanged(QString::number(m_result));
    emit secondaryDisplayChanged("");
    m_display = QString::number(m_result);
    m_pendingOperator = "";
    m_freshStart = true;
}

void CalculatorLogic::calculate() {
    double operand = m_display.toDouble();
    if (m_pendingOperator == "+") m_result += operand;
    else if (m_pendingOperator == "-") m_result -= operand;
    else if (m_pendingOperator == "*") m_result *= operand;
    else if (m_pendingOperator == "/") { if (operand != 0) m_result /= operand; }
}

void CalculatorLogic::clear() {
    m_display = "0";
    m_result = 0;
    m_pendingOperator = "";
    m_freshStart = true;
    emit displayChanged(m_display);
    emit secondaryDisplayChanged("");
}

void CalculatorLogic::decimalPressed() {
    if (m_freshStart) { m_display = "0."; m_freshStart = false; }
    else if (!m_display.contains('.')) { m_display += "."; }
    emit displayChanged(m_display);
}

void CalculatorLogic::backspace() {
    if (m_freshStart || m_display.isEmpty()) return;
    m_display.chop(1);
    if (m_display.isEmpty()) { m_display = "0"; m_freshStart = true; }
    emit displayChanged(m_display);
}

QString CalculatorLogic::getDisplay() const { return m_display; }