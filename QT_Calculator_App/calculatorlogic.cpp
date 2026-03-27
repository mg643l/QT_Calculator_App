#include "calculatorlogic.h"

CalculatorLogic::CalculatorLogic(QObject *parent) : QObject(parent), m_display("0"), m_freshStart(true) {}

void CalculatorLogic::digitPressed(int digit) {
    if (m_freshStart) {
        m_display = QString::number(digit);
        m_freshStart = false;
    } else {
        m_display += QString::number(digit);
    }
    emit displayChanged(m_display);
}

void CalculatorLogic::backspace() {
    if (!m_freshStart && !m_display.isEmpty()) {
        m_display.chop(1);
        if (m_display.isEmpty()) {
            m_display = "0";
            m_freshStart = true;
        }
        emit displayChanged(m_display);
    }
}

void CalculatorLogic::decimalPressed() {
    if (m_freshStart) {
        m_display = "0.";
        m_freshStart = false;
    } else {
        if (!m_display.contains('.')) {
            m_display += ".";
        }
    }
    emit displayChanged(m_display);
}

void CalculatorLogic::operatorPressed(const QString &op) {
    QString secondaryText = m_display + " " + op;
    emit secondaryDisplayChanged(secondaryText);
    m_freshStart = true;
}

QString CalculatorLogic::getDisplay() const {
    return m_display;
}