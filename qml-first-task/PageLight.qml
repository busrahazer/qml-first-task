import QtQuick 2.15
import QtQuick.Controls 2.15

Item {

    property string colorName: "Red" // default color name
    property string colorCode: "#FF0000" //  default color code

    Rectangle {
        width: 200
        height: 200
        color: colorCode

        Text {
            anchors.centerIn: parent
            text: "Light: " + colorName
        }

        ComboBox {
            width: parent.width - 40
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter

            model: ["Red", "Green", "Blue"]
            currentIndex: model.indexOf(colorName)

            onCurrentIndexChanged: {
                colorName = model[currentIndex]
                // Let's replace the color name with color code
                if (colorName === "Red") {
                    colorCode = "#FF1512"
                } else if (colorName === "Green") {
                    colorCode = "#12FF00"
                } else if (colorName === "Blue") {
                    colorCode = "#0000FF"
                }
            }
        }
    }
}
