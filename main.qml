import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.LocalStorage 2.0
import "pages"
import "pages/settings.js" as Mysets

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack")

    // Common start
    property int coins: 0 // Global property for money
    property int level_points : 0 // Normally increase when you get a point when answering right
    property int level: 0 //
    property int questions_count: 4
    property string asset_path : "./assets/asset1/" //Asset number
    property string player_name: "Horse rider" // Default player name
    property bool developer : true //True when developing

    ListModel {
        id: mistakesModel
        ListElement {
            first: 1
            second: 2
        }
    }
    ListModel {
        id:harnesses
        ListElement {
            label:"Halter"
            index: 5
            fill: "#502d16"
            stroke:"#502d16"
            width:0.1
            painted:false
            path:""
        }
    }

    ListModel {
        id:colores
        ListElement {
            col:"#000000"
        }
        ListElement {
            col:"#ffffff"
        }
        ListElement {
            col:"#ffd633"
        }
        ListElement {
            col:"#cca300"
        }
        ListElement {
            col:"#cc4400"
        }
        ListElement {
            col:"#bf4040"
        }
        ListElement {
            col:"#cc6600"
        }
        ListElement {
            col:"#8a8a5c"
        }
        ListElement {
            col:"#990000"
        }
        ListElement {
            col:"#999900"
        }
        ListElement {
            col:"#808000"
        }
        ListElement {
            col:"#e65c00"
        }
        ListElement {
            col:"#997300"
        }
        ListElement {
            col:"#862d59"
        }
        ListElement {
            col:"#992600"
        }
    }


    Component.onCompleted: {
        Mysets.loadSettings()
        //pageStack.push(Qt.resolvedUrl(startPageTxt))
    }
    // Common end

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("About")
                width: parent.width
                onClicked: {
                    stackView.push("pages/About.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Change player")
                width: parent.width
                onClicked: {
                    stackView.push("pages/ChangePlayer.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "pages/QuizPage.qml"
        anchors.fill: parent
    }
}
