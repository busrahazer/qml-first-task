import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 640
    height: 480

    StackView {
        id: stackView
    }

    Column {
        spacing: 5
        anchors.centerIn: parent

        Button {
            text: "Wiper"
        }

        Button {
            text: "Locks"
        }

        Button {
            text: "Display"
        }

        Button {
            text: "Sound"
            onClicked: stackView.push("PageSound.qml")
        }

        Button {
            text: "Drive"
        }

        Button {
            text: "Network"
        }

        Button {
            text: "Light"
            onClicked: stackView.push("PageLight.qml")
        }
    }

    Connections {
        target: stackView.currentItem
        onSoundVolumeChanged: {
            mainWindow.onVolumeChanged(volume);
        }
    }
}

