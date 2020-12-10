import QtQuick 2.2
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    property string name
    signal playeradded()

    Column {
        width: parent.width

        TextField {
            id: nameField
            width: parent.width
            placeholderText: qsTr("Add your player name!")
        }
        Button {
            text: qsTr("Accept")
            onClicked: {
                name = nameField.text
                playeradded()
                pageStack.pop()
            }
        }
    }

}
