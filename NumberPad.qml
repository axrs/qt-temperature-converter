import QtQuick 2.0
import QtQuick.Layouts 1.1

GridLayout{

    id: root

    signal buttonClicked(string value)
    rows: 4
    columns: 3
    rowSpacing: 0
    columnSpacing: 0
    clip: false


    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true


        NumberPadButton{
            text: "7"
            onClicked:root.buttonClicked(text)
        }
    }
    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        NumberPadButton{
            text: "8"
            onClicked:root.buttonClicked(text)
        }
    }

    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        NumberPadButton{
            text: "9"
            onClicked:root.buttonClicked(text)
        }
    }

    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true


        NumberPadButton{
            text: "4"
            onClicked:root.buttonClicked(text)
        }
    }
    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        NumberPadButton{
            text: "5"
            onClicked:root.buttonClicked(text)
        }
    }
    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true


        NumberPadButton{
            text: "6"
            onClicked:root.buttonClicked(text)
        }

    }
    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        NumberPadButton{
            text: "1"
            onClicked:root.buttonClicked(text)

        }
    }
    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        NumberPadButton{
            text: "2"
            onClicked:root.buttonClicked(text)

        }
    }
    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        NumberPadButton{
            text: "3"
            onClicked:root.buttonClicked(text)

        }
    }
    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        NumberPadButton{
            text: "0"
            onClicked:root.buttonClicked(text)

        }
    }
    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        NumberPadButton{
            text: "."
            onClicked:root.buttonClicked(text)

        }
    }

    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true

        Rectangle{
            anchors.fill: parent
            color:"#80D0021B"
            NumberPadButton{
                text: "clr"
                onClicked:root.buttonClicked(text)
                color:"#ffffff"

            }
        }


    }
}

