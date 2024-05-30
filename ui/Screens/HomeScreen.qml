import QtQuick 2.15

Item {

    id: homeScreen
    anchors.fill: parent

    ListModel {
        id: listModel

        ListElement {name: "Start Recording Session"; page: "ui/Screens/RecordingProcess/BeginSession.qml"}
        ListElement {name: "View Previous Sessions"; page: "ui/Screens/PastRecordings/PastRecordings.qml"}
        ListElement {name: "Instructions"; page: "ui/Screens/Instructions.qml"}
        ListElement {name: "Support"; page: ""}
        ListElement {name: "Option 5"; page: ""}
        ListElement {name: "Option 6"; page: ""}
        ListElement {name: "Option 7"; page: ""}
        ListElement {name: "Option 8"; page: ""}

    }

    GridView {
        id: gridView
        anchors{
            fill: parent
            margins: 25


        }

        interactive: false

        model: listModel
        cellHeight: 240
        cellWidth: 240

        delegate: Rectangle {
            width: 200
            height: 200
            color: mouse.hovered ? "#005197" : "#474448"
            radius: 5

            HoverHandler {
                id: mouse
                acceptedDevices: PointerDevice.AllDevices
                cursorShape: Qt.PointintHandCursor
            }


            Text {
                color: "#e0ddcf"
                text: name
                anchors.centerIn: parent
                wrapMode: Text.WordWrap

            }
            MouseArea {
                anchors.fill: parent
                onClicked: mainLoader.source = page

            }


        }
    }



}
