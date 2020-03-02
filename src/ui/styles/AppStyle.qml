pragma Singleton
import QtQuick 2.12
import QtQuick.Window 2.12

QtObject {

    property real scale: 1.0

    // Global colors
    property string defaultColor: "#000000"
    property string primaryColor: "#2196F3"
    property string accentColor: "#E91E63"
    property string warningColor: "#FF5722"
    property string errorColor: "#F44336"
    property string successColor: "#4CAF50"
    property string backgroundColor: "#FFFFFF"
    property string foregroundColor: "#000000"
    property string transparent: "transparent"

    // device breakpoints
    property int bp_xs: 560
    property int bp_sm: 960
    property int bp_md: 1264
    property int bp_lg: 1904

//    TextMetrics { id: fontMetrics; font.pixelSize: 1 * scale}

    // element margin
    property double mr0: 0 * scale
    property double mr1: 2 * scale
    property double mr2: 4 * scale
    property double mr3: 8 * scale
    property double mr4: 12 * scale
    property double mr5: 16 * scale
    property double mr6: 24 * scale
    property double mr7: 32 * scale

    // element spacing
    property double sp0: 0 * scale
    property double sp1: 2 * scale
    property double sp2: 4 * scale
    property double sp3: 8 * scale
    property double sp4: 12 * scale
    property double sp5: 16 * scale
    property double sp6: 24 * scale
    property double sp7: 32 * scale

    // elemect size
    readonly property real xxsm: 18 * scale
    readonly property real xsm: 22 * scale
    readonly property real sm: 24 * scale
    readonly property real md: 36 * scale
    readonly property real lg: 42 * scale
    readonly property real xlg: 48 * scale
    readonly property real xxlg: 56 * scale
    readonly property real xxxlg: 68 * scale

    // font size
    property double font_xxsmal: 6 * scale
    property double font_xsmal: 8 * scale
    property double font_smal:  10 * scale
    property double font_normal: 12 * scale
    property double font_large: 14 * scale
    property double font_xlarge: 16 * scale
    property double font_xxlarge: 20 * scale
    property double font_xxxlarge: 30 * scale
}
