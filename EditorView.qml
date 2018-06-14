import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2

Item {
    id: main

    TextField {
        id: inputFile
        height: 50
        placeholderText: "Input file..."
        anchors {
            top: main.top
            left: main.left
            right: main.right
        }
        onPressed: fileDialog.open()
    }

    TextField {
        id: clipName
        height: 50
        placeholderText: "Enter clip name..."
        anchors {
            top: inputFile.bottom
            left: main.left
            right: main.right
        }
    }

    EditorTimeItem {
        id: timeItem
        anchors {
            top: clipName.bottom
            left: main.left
            right: main.right
        }
    }

    Button {
        id: cutSave
        text: "Cut && Save"
        anchors {
            bottom: main.bottom
            left: main.left
            right: main.right
        }
    }

    FileDialog {
        id: fileDialog
        title: "Choose file.."
        folder: shortcuts.home
        onAccepted: inputFile.text = fileUrl;
    }
}
