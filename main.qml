import QtQuick 2.15
import QtQuick.Window 2.15

import "ui/Resources"


Window {
    color: "#131515"

    width:1024
    height: 600

    minimumWidth: 1024
    minimumHeight: 600
    visible: true
    title: qsTr("WAL Thermal Imaging Software")

    StatusBar{ id: statusBar }

    Loader {
        id: mainLoader

        anchors {
            left: parent.left
            right: parent.right
            top: statusBar.bottom
            bottom: parent.bottom
        }

        source: "ui/Screens/HomeScreen.qml"


    }



}
