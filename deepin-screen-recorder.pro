######################################################################
# Automatically generated by qmake (3.0) ?? 2? 4 17:49:37 2017
######################################################################

TEMPLATE = app
TARGET = deepin-screen-recorder
INCLUDEPATH += .

CONFIG += link_pkgconfig
CONFIG += c++11 
PKGCONFIG += xcb xcb-util
RESOURCES = deepin-screen-recorder.qrc

# Input
HEADERS += src/window_manager.h src/main_window.h src/record_process.h src/single_application.h src/settings.h src/utils.h
SOURCES += src/main.cpp src/window_manager.cpp src/main_window.cpp src/record_process.cpp src/single_application.cpp src/settings.cpp src/utils.cpp

QT += core
QT += widgets
QT += gui
QT += network
QT += x11extras
QT += dbus
LIBS += -lX11 -lXext

# QMAKE_CXXFLAGS += -g

isEmpty(BINDIR):BINDIR=/usr/bin
isEmpty(ICONDIR):ICONDIR=/usr/share/icons/hicolor/scalable/apps
isEmpty(APPDIR):APPDIR=/usr/share/applications
isEmpty(DSRDIR):DSRDIR=/usr/share/deepin-screen-recorder

target.path = $$INSTROOT$$BINDIR
icon.path = $$INSTROOT$$ICONDIR
desktop.path = $$INSTROOT$$APPDIR
translations.path = $$INSTROOT$$DSRDIR/translations

icon.files = image/deepin-screen-recorder.svg
desktop.files = deepin-screen-recorder.desktop

INSTALLS += target icon desktop

isEmpty(TRANSLATIONS) {
     include(translations.pri)

}

TRANSLATIONS_COMPILED = $$TRANSLATIONS
TRANSLATIONS_COMPILED ~= s/\.ts/.qm/g

translations.files = $$TRANSLATIONS_COMPILED
INSTALLS += translations
CONFIG *= update_translations release_translations

CONFIG(update_translations) {
    isEmpty(lupdate):lupdate=lupdate
    system($$lupdate -no-obsolete -locations none $$_PRO_FILE_)
}
CONFIG(release_translations) {
    isEmpty(lrelease):lrelease=lrelease
    system($$lrelease $$_PRO_FILE_)
}

DSR_LANG_PATH += $$DSRDIR/translations
DEFINES += "DSR_LANG_PATH=\\\"$$DSR_LANG_PATH\\\"" \
           "DSR_ICON_PATH=\\\"$$ICONDIR\\\""
