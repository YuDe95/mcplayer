include(../mcplayer.pri)
# Platform specific configuration
win32: include(../confwin.pri)
macx: include(../confmac.pri)
unix:!macx: include(../confunix.pri)

QT += quick network sql concurrent
TEMPLATE = app
CONFIG += c++11
TARGET = $$qtLibraryTargetName($$APP_TARGET)
DESTDIR = $$APP_PATH

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Resource files
#QMAKE_RESOURCE_FLAGS += -compress 9 -threshold 5
RESOURCES += \
        qml.qrc

DISTFILES += \
    mcplayer.rc

include(base/base.pri)
include(declarative/declarative.pri)
include(app/app.pri)

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Quick Controls2 configure
QT_QUICK_CONTROLS_CONF=:/qtquickcontrols2.conf

# path to vlc library
INCLUDEPATH += $$MCPLAYER_SOURCE_TREE/src \
        $$MCPLAYER_SOURCE_TREE/3rdparty/vlc/include
LIBS *= -L$$MCPLAYER_LIBRARY_PATH \
        -L$$MCPLAYER_SOURCE_TREE/3rdparty/vlc/lib -llibvlc -llibvlccore

message(LIBS $$LIBS)
message(TARGET $$TARGET)
message(DESTDIR $$DESTDIR)
