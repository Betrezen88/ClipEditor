import QtQuick 2.0

Item {
    property string playlistName
    property string iconName

    id: main
    width: 100
    height: 50

    Rectangle {
        anchors.fill: parent
        color: "gray"
    }

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
            text: playlistName
            anchors {
                verticalCenter: parent.verticalCenter
            }
        }
    }
}
