#include "widget.h"
#include "ui_widget.h"

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    tcpServer = new QTcpServer();
    tcpSocket = new QTcpSocket();

    ui->pushButtonSend->setEnabled(false);
    ui->pushButtonClose->setEnabled(false);
    connect(ui->pushButtonListen,&QPushButton::clicked,this,&Widget::on_btnListen_clicked);
}

void Widget::on_btnListen_clicked(){
    bool res = tcpServer->listen(QHostAddress::Any,8888);
    if(res){
        connect(tcpServer,&QTcpServer::newConnection,this,&Widget::connectToClent);
//        QMessageBox::information(this,"success","listen");
    }else{
//        QMessageBox::information(this,"fail","listen");
    }
}
void Widget::connectToClent(){
    tcpSocket = tcpServer->nextPendingConnection();

//    QString ip = tcpSocket->peerAddress().toString().split("::ffff:")[1];
//    qint16 port = tcpSocket->peerPort();

//    ui->textEditRecv->setText(QString("[%1:%2]").arg(ip).arg(port));
    ui->pushButtonSend->setEnabled(true);
    ui->pushButtonClose->setEnabled(true);
    connect(tcpSocket,&QTcpSocket::readyRead,this,&Widget::tcpRecv);
    connect(ui->pushButtonSend,&QPushButton::clicked,this,&Widget::on_btnSend_clicked);
    connect(ui->pushButtonClose,&QPushButton::clicked,this,&Widget::on_btnClose_clicked);
}
void Widget::tcpRecv(){
    QByteArray temp = tcpSocket->readAll();
    ui->textEditRecv->append(temp);

}
void Widget::on_btnSend_clicked(){
    QByteArray data("aaaa");
    if(tcpSocket){
        QString str = ui->textEditSend->toPlainText();

//        tcpSocket->write(str.toUtf8().data());
        tcpSocket->write(data);
    }
}
void Widget::on_btnClose_clicked(){
    tcpSocket->disconnectFromHost();
    tcpSocket->close();
    ui->pushButtonSend->setEnabled(false);
    ui->pushButtonClose->setEnabled(false);
    disconnect(tcpSocket,&QTcpSocket::readyRead,this,&Widget::tcpRecv);
    disconnect(ui->pushButtonSend,&QPushButton::clicked,this,&Widget::on_btnSend_clicked);
    disconnect(ui->pushButtonClose,&QPushButton::clicked,this,&Widget::on_btnClose_clicked);
}

Widget::~Widget()
{
    delete ui;
}
