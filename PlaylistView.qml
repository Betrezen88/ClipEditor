import QtQuick 2.0

Item {
    id: main

    ListModel {
        id: model

        ListElement { label: "label1"; path: "img1" }
        ListElement { label: "label2"; path: "img1" }
        ListElement { label: "label3"; path: "img1" }
        ListElement { label: "label4"; path: "img1" }
        ListElement { label: "label5"; path: "img1" }
        ListElement { label: "label6"; path: "img1" }
        ListElement { label: "label7"; path: "img1" }
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
        cellHeight: 50

        model: model

        delegate: PlaylistDelegate {
            playlistName: label
            iconName: path
            height: 50
        }

        onWidthChanged: {
            if ( gridView.width <= 600 ) {
                cellWidth = gridView.width / 2;
            }
            else if ( gridView.width >= 601 )
                cellWidth = gridView.width / 4;
            }
    }
}
