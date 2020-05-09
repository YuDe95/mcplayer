APP_TARGET = "$$APP_DISPLAY_NAME"

# check if BUILD_TREE is actually an existing McPlayer.app,
# for building against a binary package
exists($$MCPLAYER_BUILD_TREE/Contents/MacOS/$$APP_TARGET): APP_BUNDLE = $$MCPLAYER_BUILD_TREE
else: APP_BUNDLE = $$APP_PATH/$${APP_TARGET}.app

# set output path if not set manually
isEmpty(APP_OUTPUT_PATH): APP_OUTPUT_PATH = $$APP_BUNDLE/Contents

MCPLAYER_LIBRARY_PATH = $$APP_OUTPUT_PATH/Frameworks
MCPLAYER_PLUGIN_PATH  = $$APP_OUTPUT_PATH/PlugIns
MCPLAYER_LIBEXEC_PATH = $$APP_OUTPUT_PATH/Resources
MCPLAYER_DATA_PATH    = $$APP_OUTPUT_PATH/Resources
MCPLAYER_DOC_PATH     = $$APP_DATA_PATH/doc
MCPLAYER_BIN_PATH     = $$APP_OUTPUT_PATH/MacOS

contains(QT_CONFIG, ppc):CONFIG += ppc x86
copydata = 1

INSTALL_LIBRARY_PATH = $$APP_PREFIX/$${APP_TARGET}.app/Contents/Frameworks
INSTALL_PLUGIN_PATH  = $$APP_PREFIX/$${APP_TARGET}.app/Contents/PlugIns
INSTALL_LIBEXEC_PATH = $$APP_PREFIX/$${APP_TARGET}.app/Contents/Resources
INSTALL_DATA_PATH    = $$APP_PREFIX/$${APP_TARGET}.app/Contents/Resources
INSTALL_DOC_PATH     = $$INSTALL_DATA_PATH/doc
INSTALL_BIN_PATH     = $$APP_PREFIX/$${APP_TARGET}.app/Contents/MacOS
INSTALL_APP_PATH     = $$APP_PREFIX/

LIBS *= -L$$MCPLAYER_LIBRARY_PATH \
        -L$$MCPLAYER_SOURCE_TREE/3rdparty/vlc/lib -lvlc -lvlccore
