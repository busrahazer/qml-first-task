import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480

    Options {
        width: parent.width
        height: parent.height
    }

    Component.onCompleted: {
        //Sinyal baglamalari
        stackView.currentItem.soundVolumeChanged.connect(onSoundVolumeChanged)
    }

    function onSoundVolumeChanged(volume) {
        mainWindow.onVolumeChanged(volume);
    }
}
