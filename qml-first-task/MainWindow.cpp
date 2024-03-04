#include "MainWindow.h"
#include <QDebug>

MainWindow::MainWindow(QObject *parent) : QObject(parent)
{
}

void MainWindow::onVolumeChanged(int volume)
{

    if(volume == 5)
    {
        qDebug()<< "SA World!";
    }
}


