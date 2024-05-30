import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Rectangle {
    id:statusBar

    anchors {
        top: parent.top
        left: parent.left
        right: parent.right
    }

    height: 75

    color: "#242424"

    Text {
        id: currentScreen
        text: "WAL Thermal Imaging Software"

        anchors {
            centerIn: parent
        }

        color: "#bfbfbf"
        font.bold: true
    }

    Image {
        source: "qrc:/ui/Assets/WAL.png"
        fillMode: Image.PreserveAspectFit

        anchors {

            left: parent.left
            leftMargin: 10
            verticalCenter: parent.verticalCenter
        }

    }

    RowLayout {


        height: parent.height
        width: 200
        anchors {
            right: parent.right
            top: parent.top

        }

        CustomButton {
            id: homeButton

            txt: "Home"
            page: "ui/Screens/HomeScreen.qml"

        }

        CustomButton {
            id: settingsButton

            txt: "Settings"
            page: "ui/Screens/Settings.qml"
        }

    }

}
