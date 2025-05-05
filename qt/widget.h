#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QTcpServer>
#include <QTcpSocket>
#include <QMessageBox>
#include <QPushButton>
#include <QString>
#include <QByteArray>

namespace Ui {
class Widget;
}

class Widget : public QWidget
{
    Q_OBJECT

public:
    explicit Widget(QWidget *parent = nullptr);
    ~Widget();

private:
    Ui::Widget *ui;
    QTcpServer* tcpServer;
    QTcpSocket* tcpSocket;


private slots:
    void on_btnSend_clicked();
    void on_btnListen_clicked();
    void on_btnClose_clicked();
    void connectToClent();
    void tcpRecv();
};

#endif // WIDGET_H
