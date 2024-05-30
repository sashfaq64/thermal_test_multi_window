import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    anchors.fill: parent

        ScrollView {
            anchors.fill: parent
            anchors.margins: 20

            Column {
                spacing: 10

                Repeater {
                    model: ListModel {
                        ListElement { name: "Recording 1"; date: "01/25/2024" }
                        ListElement { name: "Recording 2"; date: "07/06/2021" }
                        ListElement { name: "Recording 3"; date: "06/23/2022" }
                        ListElement { name: "Recording 4"; date: "03/19/2066" }
                        ListElement { name: "Recording 5"; date: "12/12/2012" }
                        ListElement { name: "Recording 6"; date: "10/06/2015" }
                        ListElement { name: "Recording 7"; date: "07/11/2014" }
                        ListElement { name: "Recording 8"; date: "01/01/2001" }
                    }

                    Rectangle {
                        width: root.width
                        height: 75
                        radius: 3

                        Text {
                            text: name
                            color: "#e0ddcf"
                            font.bold: true
                            font.pixelSize: 18
                            anchors {
                                verticalCenter: parent.verticalCenter
                                left: parent.left
                                leftMargin: 10
                            }
                        }

                        color: mouse.hovered ? "#005197" : "#474448"
                        HoverHandler {
                            id: mouse
                            acceptedDevices: PointerDevice.AllDevices
                            cursorShape: Qt.PointintHandCursor
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: mainLoader.source = "ui/Screens/PastRecordings/RecordingDisplay.qml"

                        }

                        Item {
                            width: 250
                            height: parent.height
                            anchors {
                                right: parent.right
                                rightMargin: 10
                            }

                            Text {
                                id:dateRecorded
                                color: "#e0ddcf"
                                text: "Date Recorded: " + date
                            }
                        }


                    }
                }

            }
        }


}
