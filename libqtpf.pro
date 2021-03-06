# Copyright 2012-2015 Hallowyn and others.
# See the NOTICE file distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file to you under
# the Apache License, Version 2.0 (the "License"); you may not use this
# file except in compliance with the License. You may obtain a copy of the
# License at http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations
# under the License.

QT -= gui
QT += sql

TARGET = qtpfsql
TEMPLATE = lib
INCLUDEPATH = ../libqtpf

DEFINES += LIBQTPF_LIBRARY

exists(/usr/bin/ccache):QMAKE_CXX = ccache g++
QMAKE_CXXFLAGS += -Wextra
unix:debug:QMAKE_CXXFLAGS += -ggdb
unix {
  OBJECTS_DIR = build-libqtpfsql-unix/obj
  RCC_DIR = build-libqtpfsql-unix/rcc
  MOC_DIR = build-libqtpfsql-unix/moc
}

SOURCES += \
    pf/pfsqlarrayfiller.cpp

HEADERS +=\
    pf/pfsqlarrayfiller.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
