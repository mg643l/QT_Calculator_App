#pragma once
#include <QObject>
#include <QQmlEngine>
#include <QString>

class CalculatorLogic : public QObject {
    Q_OBJECT
    QML_ELEMENT

public:
    explicit CalculatorLogic(QObject *parent = nullptr);

public slots:
    void digitPressed(int digit);
    void decimalPressed();
    void backspace();
    QString getDisplay() const;

signals:
    void displayChanged(const QString &newDisplay);

private:
    QString m_display;
    bool m_freshStart;
};