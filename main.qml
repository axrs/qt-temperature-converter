import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {

    property string result: ""

    title: qsTr("Temperature Converter")
    width: 360
    height: 640
    visible: true

    id:root

    Rectangle{
        id: backgroundFill
        anchors.fill: parent

        color:"#80000000"
    }

    Rectangle{
        id:dialog
        anchors.fill: parent
        anchors.margins: 20

        color:"#fafafa"
    }
    Rectangle{
        id:captionBackground
        anchors.left:dialog.left
        anchors.right: dialog.right
        anchors.top: dialog.top

        height: caption.height * 2

        color:"#00897B"
        Text{
            id: caption
            text: "Temperature Converter"

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

            anchors.top:parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            anchors.margins: height/2

            font.pointSize: 14
            font.bold: Font.Bold
            color: "#ffffff"
        }
    }

    Rectangle{
        id:resultBackground
        anchors.left: dialog.left
        anchors.top: captionBackground.bottom
        anchors.right: dialog.right

        color:"#009688"
        height: 200-captionBackground.height

        Text{
            id:resultText
            anchors.fill: parent
            font.pointSize: 80

            //(°F  -  32)  x  5/9 = °C
            text: (root.result == "")? "" : parseFloat(Math.round((root.result - 32) * (5/9) * 100) / 100).toFixed(2) + "°C"

            color: "#ffffff"

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }


    Rectangle{

        id:input

        border.width:1
        border.color: "#10000000"
        anchors.margins: 10
        anchors.top: resultBackground.bottom
        anchors.left: dialog.left
        anchors.right: dialog.right
        height: 48

        Text{
            anchors.fill: parent

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

            font.pointSize: 14
            text: (root.result == "")? "Enter a temperature" : root.result + "°F"
        }
    }

    NumberPad{
        anchors.top: input.bottom
        anchors.bottom: dialog.bottom
        anchors.left: dialog.left
        anchors.right: dialog.right
        onButtonClicked: root.result = (value == "clr")? "" : root.result + value

    }
}
