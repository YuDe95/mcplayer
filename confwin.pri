APP_TARGET = $$APP_ID

# 如果没有手动设置目标输出路径
isEmpty(APP_OUTPUT_PATH): APP_OUTPUT_PATH = $$MCPLAYER_BUILD_TREE

MCPLAYER_LIBRARY_PATH = $$APP_OUTPUT_PATH/$$MCPLAYER_LIBRARY_BASENAME/mcplayer
MCPLAYER_PLUGIN_PATH  = $$MCPLAYER_LIBRARY_PATH/plugins
MCPLAYER_DATA_PATH    = $$APP_OUTPUT_PATH/share/mcplayer
MCPLAYER_DOC_PATH     = $$APP_OUTPUT_PATH/share/doc/mcplayer
MCPLAYER_BIN_PATH     = $$APP_OUTPUT_PATH/bin

APP_LIBEXEC_PATH = $$APP_OUTPUT_PATH/bin

INSTALL_LIBRARY_PATH = $$APP_PREFIX/$$MCPLAYER_LIBRARY_BASENAME/mcplayer
INSTALL_PLUGIN_PATH  = $$INSTALL_LIBRARY_PATH/plugins
INSTALL_LIBEXEC_PATH = $$APP_PREFIX/bin
INSTALL_DATA_PATH    = $$APP_PREFIX/share/mcplayer
INSTALL_DOC_PATH     = $$APP_PREFIX/share/doc/mcplayer
INSTALL_BIN_PATH     = $$APP_PREFIX/bin
INSTALL_APP_PATH     = $$APP_PREFIX/bin

exists($$MCPLAYER_SOURCE_TREE/lib/mcplayer) {
    # for .lib in case of binary package with dev package
    LIBS *= -L$$MCPLAYER_SOURCE_TREE/lib/mcplayer
    LIBS *= -L$$MCPLAYER_SOURCE_TREE/lib/mcplayer/plugins
}

COPYRIGHT = "$${MCPLAYER_COPYRIGHT} By Yuri Young"
DESCRIPTION  = "$${APP_CASE_ID} For Music"
DEFINES += RC_VERSION=$$replace(MCPLAYER_VERSION, "\\.", ","),0 \
        RC_VERSION_STRING=\"$${MCPLAYER_COMPAT_VERSION}\" \
        RC_DESCRIPTION_STRING=\"$$replace(DESCRIPTION, " ", "\\x20")\" \
        RC_COPYRIGHT=\"$$replace(COPYRIGHT, " ", "\\x20")\"
RC_FILE = mcplayer.rc

# can not read vlc.lib file in windows
LIBS *= -L$$MCPLAYER_LIBRARY_PATH \
    -L$$MCPLAYER_SOURCE_TREE/3rdparty/vlc/lib -llibvlc -llibvlccore
