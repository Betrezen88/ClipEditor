import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: main

    Button {
        id: menuBtn
        text: "M"
        width: main.height
        anchors {
            top: main.top;
            bottom: main.bottom;
            left: main.left
        }
        onClicked: console.log("Playlist menu button clicked.")
    }

    TextField {
        id: searchInput
        placeholderText: "Enter playlist name..."
        anchors {
            top: main.top;
            bottom: main.bottom;
            left: menuBtn.right;
            right: searchBtn.left;
        }
    }

    Button {
        id: searchBtn
        text: "S"
        width: main.height
        anchors {
            top: main.top;
            bottom: main.bottom;
            right: main.right;
        }
        onClicked: console.log("Playlist search button clicked.")
    }
}
