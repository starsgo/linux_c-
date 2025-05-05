/********************************************************************************
** Form generated from reading UI file 'widget.ui'
**
** Created by: Qt User Interface Compiler version 6.9.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_WIDGET_H
#define UI_WIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Widget
{
public:
    QWidget *widget;
    QVBoxLayout *verticalLayout;
    QTextEdit *textEditRecv;
    QTextEdit *textEditSend;
    QHBoxLayout *horizontalLayout;
    QPushButton *pushButtonListen;
    QPushButton *pushButtonSend;
    QPushButton *pushButtonClose;

    void setupUi(QWidget *Widget)
    {
        if (Widget->objectName().isEmpty())
            Widget->setObjectName("Widget");
        Widget->resize(340, 482);
        widget = new QWidget(Widget);
        widget->setObjectName("widget");
        widget->setGeometry(QRect(40, 40, 258, 411));
        verticalLayout = new QVBoxLayout(widget);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName("verticalLayout");
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        textEditRecv = new QTextEdit(widget);
        textEditRecv->setObjectName("textEditRecv");

        verticalLayout->addWidget(textEditRecv);

        textEditSend = new QTextEdit(widget);
        textEditSend->setObjectName("textEditSend");

        verticalLayout->addWidget(textEditSend);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(6);
        horizontalLayout->setObjectName("horizontalLayout");
        pushButtonListen = new QPushButton(widget);
        pushButtonListen->setObjectName("pushButtonListen");

        horizontalLayout->addWidget(pushButtonListen);

        pushButtonSend = new QPushButton(widget);
        pushButtonSend->setObjectName("pushButtonSend");

        horizontalLayout->addWidget(pushButtonSend);

        pushButtonClose = new QPushButton(widget);
        pushButtonClose->setObjectName("pushButtonClose");

        horizontalLayout->addWidget(pushButtonClose);


        verticalLayout->addLayout(horizontalLayout);


        retranslateUi(Widget);

        QMetaObject::connectSlotsByName(Widget);
    } // setupUi

    void retranslateUi(QWidget *Widget)
    {
        Widget->setWindowTitle(QCoreApplication::translate("Widget", "Widget", nullptr));
        pushButtonListen->setText(QCoreApplication::translate("Widget", "PushButton", nullptr));
        pushButtonSend->setText(QCoreApplication::translate("Widget", "PushButton", nullptr));
        pushButtonClose->setText(QCoreApplication::translate("Widget", "PushButton", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Widget: public Ui_Widget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_WIDGET_H
