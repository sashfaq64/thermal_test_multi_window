import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15
import "../../Resources"


Item {

    anchors.fill: parent

    SidePanel { id: sidePanel }

    Item {
        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
            left: sidePanel.right
        }

        Text{
            anchors.fill: parent
            anchors.margins: 20
            text: "This application is designed to work in conjunction with FLIR Thermal Cameras. Please check that your camera model is supported by the FLIR Atlas SDK. When proceeding with the recording process, please make sure to follow all directions carefully. For a comprehensive overview of this program's functions, please refer to the 'Instruction' module on the Home screen.\n\n Click on the Next button to proceed with the recording session."
            wrapMode: Text.WordWrap

            color: "#e0ddcf"
        }

        RowLayout {

            anchors {
                bottom: parent.bottom
                right: parent.right
                bottomMargin: 10
            }

            width: 200

            CustomButton {
                txt: "Previous"
                page: "ui/Screens/RecordingProcess/BeginSession.qml"
            }

            CustomButton {
                txt: "Next"
                page: "ui/Screens/RecordingProcess/ConnectionCheck.qml"
            }
        }
    }
}
