TEMPLATE = app
QT += qml quick quickcontrols2
RESOURCES += app.qrc
CONFIG += c++11

SOURCES += main.cpp

android: {
  ANDROID_PACKAGE_SOURCE_DIR = $$PWD/../android

  # Note: No one knows, but plugins must be first installed in Qt SDK qml directory.
  ANDROID_EXTRA_LIBS += /opt/Qt/5.8/$$(QT_ANDROID_ABI)/qml/net/pezzato/sdcardcid/libSdcardCidPlugin.so
  ANDROID_EXTRA_LIBS += /opt/crystax/sources/crystax/libs/$$(APP_ABI)/libcrystax.so
  LIBS += -L/opt/crystax/sources/crystax/libs/$$(APP_ABI)

  DISTFILES += ../android/AndroidManifest.xml
  DISTFILES += ../android/gradle/wrapper/gradle-wrapper.jar
  DISTFILES += ../android/gradlew
  DISTFILES += ../android/res/values/libs.xml
  DISTFILES += ../android/build.gradle
  DISTFILES += ../android/gradle/wrapper/gradle-wrapper.properties
  DISTFILES += ../android/gradlew.bat
}
