import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: main

    RangeSlider {
        id: timeSlider
        height: 50
        from: 1
        to: 100
        first.value: 1
        second.value: 100
        anchors {
            top: main.top
            left: main.left
            right: main.right
        }
    }

    Item {
        id: boxItem
        height: 50
        anchors {
            top: timeSlider.bottom
            left: main.left
            right: main.right
        }

        SpinBox {
            id: startTime
            value: timeSlider.first.value
            anchors.left: parent.left
        }

        Label {
            id: label
            text: "test"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors {
                left: startTime.right
                right: endTime.left
            }
        }

        SpinBox {
            id: endTime
            value: timeSlider.second.value
            anchors.right: parent.right
        }
    }
}
