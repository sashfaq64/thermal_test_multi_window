import QtQuick 2.15
import QtQuick.Layouts

Rectangle {

    id: sidePanel

    anchors {
        top: parent.top
        bottom: parent.bottom
        left: parent.left

    }

    color: "#474448"
    width: 250

    ColumnLayout {

        id: columnLayout
        anchors.fill: parent

        Text{id: begin; text: "Begin Session"; Layout.alignment: Qt.AlignCenter; color: "#e0ddcf"}
        Text{id: connection; text: "Connection Check"; Layout.alignment: Qt.AlignCenter; color: "#e0ddcf" }
        Text{id: camera; text: "Camera Check"; Layout.alignment: Qt.AlignCenter; color: "#e0ddcf" }
        Text{id: config; text: "Configuration"; Layout.alignment: Qt.AlignCenter; color: "#e0ddcf" }
        Text{id: confirm; text: "Confirmation"; Layout.alignment: Qt.AlignCenter; color: "#e0ddcf" }
        Text{id: inProg; text: "Session in Progress"; Layout.alignment: Qt.AlignCenter; color: "#e0ddcf" }
        Text{id: results; text: "Results"; Layout.alignment: Qt.AlignCenter; color: "#e0ddcf" }
        Text{id: exp; text: "Export"; Layout.alignment: Qt.AlignCenter; color: "#e0ddcf" }


    }


}
