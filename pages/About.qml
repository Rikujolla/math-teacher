/*Copyright (c) 2019, Riku Lahtinen
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.15
//import Sailfish.Silica 1.0


Page {
    id: page
    title: qsTr("About page")

    Flickable {
        anchors.fill: parent

        /*PullDownMenu {

            MenuItem {
                text: qsTr("Back to settings")
                onClicked: pageStack.pop()
            }
        }*/

        contentHeight: column.height

        Column {
            id: column

            width: page.width
            spacing: Screen.height/30
            topPadding: Screen.height/30
            leftPadding: Screen.width/30
            /*PageHeader {
                title: qsTr("About page")
            }*/
            Image {
                id: logo
                source: "./assets/harbour-math-teacher.png"
                anchors.horizontalCenter: parent.horizontalCenter
                height: Screen.width/7
                width: Screen.width/7
            }

            Label {
                //font.pixelSize: Theme.fontSizeSmall
                //color: Theme.primaryColor
                width: parent.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Screen.width/30
                }
                //: The name of the app followed with a version number
                text: {qsTr("Math teacher, version") + " 0.0.9"}
            }

            Label {
                font.bold: true
                text: qsTr("Idea")
            }
            Text {
                //font.pixelSize: Theme.fontSizeSmall
                //color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: parent.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Screen.width/30
                }
                text: {qsTr("The idea of the software is to help children to learn maths.")
                }
            }

            Label {
                font.bold: true
                text: qsTr("Translations")
            }
            Text {
                //font.pixelSize: Theme.fontSizeSmall
                //color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: parent.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Screen.width/30
                }
                text: {
                    qsTr("Finnish (Riku Lahtinen)") + "\n"
                            + qsTr("French (Quentin)") + "\n"
                            + qsTr("Swedish (Åke Engelbrektson)") + "\n"
                            + qsTr("Chinese (China) (Historyscholar)")
                }
            }

            Label {
                font.bold: true
                text: qsTr("Contributions")
            }
            Text {
                //font.pixelSize: Theme.fontSizeSmall
                //color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: parent.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Screen.width/30
                }
                text: {
                    qsTr("App icon (Riku Lahtinen)")
                }
            }

            Label {
                font.bold: true
                text: qsTr("Licence")
            }
            Text {
                //font.pixelSize: Theme.fontSizeSmall
                //color: Theme.primaryColor
                wrapMode: Text.WordWrap
                width: parent.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Screen.width/30
                }
                text: qsTr("Copyright (c) 2015, Riku Lahtinen") + "\n"
                      + qsTr("Licensed under BSD. License, source code and more information:") + "\n"
                      + ("https://github.com/Rikujolla/harbour-math-teacher")
            }
        }
    }
}
