import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

import "../../Resources"

Item {

    anchors.fill: parent

    SidePanel {
        id: sidePanel

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
            page: ""
        }
    }

}
