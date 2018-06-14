import QtQuick 2.0

Rectangle {
    property string playlistName
    property string iconName

    id: main
    color: "gray"
    border.color: "white"
    border.width: 2

    Row {
        anchors.fill: main
        Rectangle {
            id: icon
            color: "green"
            width: 20
            height: 20
            anchors {
                verticalCenter: parent.verticalCenter
            }
        }
        Text {
            text: " " + playlistName
            anchors {
                verticalCenter: parent.verticalCenter
            }
        }
    }
}
