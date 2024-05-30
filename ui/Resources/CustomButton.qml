import QtQuick 2.15

Rectangle {

    id:customButton

    width: 80
    height: 30

    radius: 3

    color: mouse.hovered ? "#049c44" : "#474448"

    property string txt
    property string page

    Text { text: txt; anchors.centerIn: parent; color: "#bfbfbf" }

    MouseArea {
        anchors.fill: parent
        onClicked: mainLoader.source = page
    }

    HoverHandler {
        id: mouse
        acceptedDevices: PointerDevice.AllDevices
        cursorShape: Qt.PointintHandCursor
    }
}
