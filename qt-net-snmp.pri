
DEPENDPATH +=$$PWD $$PWD/include $$PWD/src

INCLUDEPATH +=$$PWD $$PWD/include $$PWD/src

HEADERS += \
    $$PWD/include/qsnmpmanager.h \
    $$PWD/include/qsnmpexception.h \
    $$PWD/include/qsnmpobject.h \
    $$PWD/include/qsnmpcore.h \
    $$PWD/include/qsnmpdata.h \
    $$PWD/include/qsnmpoid.h \
    $$PWD/include/qsnmpostream.h \
    $$PWD/include/qmibtree.h \
    $$PWD/include/qtnetsnmp_global.h \
    $$PWD/include/qsnmpglobal.h \
    $$PWD/include/qsnmptypes.h

SOURCES += \
    $$PWD/src/qsnmpmanager.cpp \
    $$PWD/src/qsnmpobject.cpp \
    $$PWD/src/qsnmpcore.cpp \
    $$PWD/src/qsnmpoid.cpp \
    $$PWD/src/qsnmpdata.cpp \
    $$PWD/src/qsnmpostream.cpp \
    $$PWD/src/qmibtree.cpp

LIBS += -lnetsnmp

DEFINES += QTNETSNMP_LIBRARY

unix {
    target.path = /usr/lib
    headers.path = /usr/include/QtNetSNMP
    headers.files = include/*
    documentation.path = /usr/share
    documentation.commands = doxygen
    documentation.files = doc

    INSTALLS += target headers documentation
}

OTHER_FILES += \
    $$PWD/AUTHOR \
    $$PWD/LICENSE \
    $$PWD/README
