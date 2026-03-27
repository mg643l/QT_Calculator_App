#ifndef CALCULATORLOGIC_H
#define CALCULATORLOGIC_H

#include <QObject>
#include <QString>
#include <QtQml/qqmlregistration.h>

class CalculatorLogic : public QObject {
    Q_OBJECT
    QML_ELEMENT

public:
    explicit CalculatorLogic(QObject *parent = nullptr);

public slots:
    void digitPressed(int digit);
    void decimalPressed();
    void backspace();
    void operatorPressed(const QString &op);
    void equalsPressed();
    void clear();
    QString getDisplay() const;

signals:
    void displayChanged(const QString &newDisplay);
    void secondaryDisplayChanged(const QString &newDisplay);

private:
    void calculate();
    QString m_display;
    QString m_pendingOperator;
    double m_result;
    bool m_freshStart;
};

#endif // CALCULATORLOGIC_H