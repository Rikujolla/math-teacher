import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Page {
    id: page
    property int intexos
    signal colorselected()
    title: qsTr("Color selection")

    MouseArea {
        width: page.width
        height: 3*page.width/4
        GridView {
            id:grid
            cellWidth: page.width/3
            cellHeight: page.width/4
            anchors.fill: parent
            model:colores
            delegate: Rectangle {
                id:hh_rec
                width: grid.cellWidth
                height: grid.cellHeight
                border.width: 1
                border.color: "black"
                color: col
                MouseArea {
                    anchors.fill: parent
                    height: grid.cellHeight
                    width: grid.cellWidth
                    onClicked: {
                        page.colorselected()
                        for (var i = 0; i < harnesses.count; i++) {
                            if (harnesses.get(i).index === intexos) {
                                harnesses.set(i,{"painted":true});
                                harnesses.set(i,{"fill":col, "stroke":col})
                            }
                        }
                        stackView.pop()
                    }
                }
            }
        }
    }
}
