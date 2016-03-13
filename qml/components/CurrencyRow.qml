import QtQuick 2.0

Item {
    property string currency
    property real heightInches : 1
    property string leftText
    property string rightText : "1"
    width: itemRow.width
    height: itemRow.height

    Row {
        id: itemRow
        spacing: heightInches / 5.0 * dpi
        Text {
            font.pixelSize: heightInches * dpi
            text: leftText
            visible: leftText.length > 0
        }

        Image {
            id: img
            anchors.verticalCenter: parent.verticalCenter
            sourceSize.height: heightInches * dpi
            source: "/images/" + currency.toLowerCase()
        }

        Text {
            font.pixelSize: heightInches * dpi
            text: rightText
            visible: rightText.length > 0
        }
    }
}
