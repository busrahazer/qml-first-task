import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 200
    height: 200

    property int volume: 0

    signal soundVolumeChanged(int volume)

    Rectangle {
        width: parent.width
        height: parent.height
        color: "lightyellow"

        Slider {
            id: volumeSlider
            anchors.centerIn: parent
            width: parent.width * 0.8
            from: 0
            to: 10
            stepSize: 1
            value: volume
            onValueChanged: {
                volume = value;
                soundVolumeChanged(volume); // trigger c++ function
            }
        }

        Text {
            anchors.top: volumeSlider.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Volume: " + volume
        }
    }
}


