# include this pri file in your project file to
# add pugixml to your QT project.

# dont forget to set PUGIXMLHOME to the directory containing this file
PUGIXMLHOME = $$IN_PWD
PUGIXMLHOME = $$PWD

isEmpty( PUGIXMLHOME ) {
  warning( "Couldn't locate pugixml dir: has the environment PUGIXMLHOME been set?" )
}

exists ( $$PUGIXMLHOME/ ) {

INCLUDEPATH += $${PUGIXMLHOME}/src

HEADERS += $${PUGIXMLHOME}/src/pugiconfig.hpp \
           $${PUGIXMLHOME}/src/pugixml.hpp

SOURCES += $${PUGIXMLHOME}/src/pugixml.cpp

}
