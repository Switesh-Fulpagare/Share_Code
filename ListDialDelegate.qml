
import QtQuick 2.1

Item {
    id: container2
    width: ListView.view.width; height: 60; anchors.leftMargin: 10; anchors.rightMargin: 10
    property bool raiseFlag
    Rectangle {
        id: content
        anchors.centerIn: parent; width: container2.width - 40; height: container2.height - 10
        color: "transparent"
        antialiasing: true
        radius: 10

        Rectangle { anchors.fill: parent; anchors.margins: 3; color: "#1ae7ee"; antialiasing: true; radius: 8 }
    }

    Text {
        id: label
        anchors.centerIn: content
        text: modelData
        color: "#193441"
        font.pixelSize: 14
    }


    Keys.onSpacePressed: {
        switch(index){
        case 0:
            viewRPM_Dialoption.focus=true
            break;
        case 1:
            viewSpeed_Dialoption.focus=true
            break;
        case 2:
            break;
        }

    }

    states: State {
        name: "active"; when: container2.activeFocus
        PropertyChanges { target: content; color: "orange"; scale: 1.1 }//"#FCFFF5"
        PropertyChanges { target: label; font.pixelSize: 20 }
    }

    transitions: Transition {
        NumberAnimation { properties: "scale"; duration: 100 }
    }
}
