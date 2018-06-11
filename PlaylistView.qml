import QtQuick 2.0

Item {
    id: main

    ListModel {
        id: model

        ListElement { label: "label1"; path: "img1" }
        ListElement { label: "label1"; path: "img1" }
        ListElement { label: "label1"; path: "img1" }
        ListElement { label: "label1"; path: "img1" }
    }

    PlaylistUpperBar {
        id: upperMenu
        height: 50
        anchors {
            top: main.top
            left: main.left
            right: main.right
        }
    }

    GridView {
        id: gridView
        anchors {
            top: upperMenu.bottom
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }

        model: model

        delegate: Column {
            spacing: 1
            Text { text: path }
            Text { text: label }
        }
    }
}
