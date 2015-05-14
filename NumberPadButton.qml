import QtQuick 2.0

Text{

    id: root

    signal clicked(string value)

    anchors.fill: parent

    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter

    text: ""

    font.pointSize: 14
    font.bold: Font.Bold
    color: "#009688"


    MouseArea{
        anchors.fill: parent
        onClicked: root.clicked(root.text)
    }

}

