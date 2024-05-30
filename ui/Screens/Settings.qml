import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Item {

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20

        Text { text: "Language Options: "; color: "#bfbfbf"}

        RadioButton {
            text: { "hi" }
        }
    }
}
