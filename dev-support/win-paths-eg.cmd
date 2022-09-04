@ECHO OFF
@REM Licensed to the Apache Software Foundation (ASF) under one or more
@REM contributor license agreements.  See the NOTICE file distributed with
@REM this work for additional information regarding copyright ownership.
@REM The ASF licenses this file to You under the Apache License, Version 2.0
@REM (the "License"); you may not use this file except in compliance with
@REM the License.  You may obtain a copy of the License at
@REM
@REM     http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing, software
@REM distributed under the License is distributed on an "AS IS" BASIS,
@REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM See the License for the specific language governing permissions and
@REM limitations under the License.

@REM *************************************************
@REM JDK and these settings MUST MATCH
@REM
@REM 64-bit : Platform = x64, VCVARSPLAT = amd64
@REM
@REM 32-bit : Platform = Win32, VCVARSPLAT = x86
@REM

SET Platform=x64
SET VCVARSPLAT=amd64

@REM ******************
@REM Forcibly move the Maven local repo

@REM SET MAVEN_OPTS=-Dmaven.repo.local=C:\Tools\m2

@REM *******************************************
@REM
@REM Locations of your bits and pieces
@REM
@REM NOTE: cmake is assumed to already be on the
@REM command path
@REM

SET MAVEN_HOME=C:\dev-tools\apache-maven-3.6.3
SET JAVA_HOME=%JAVA_HOME%
SET MSVS=C:\Program Files\Microsoft Visual Studio\2022\Professional
SET PROTO_BIN=C:\dev-tools\protoc-3.7.1-win64\bin
SET GIT_HOME=C:\Program Files\Git
SET ZLIB_HOME=C:\dev-tools\zlib-1.2.12

SET PATH=%JAVA_HOME%\bin;%MAVEN_HOME%\bin;%PROTO_BIN%;%GIT_HOME%\bin;%PATH%

CALL "%MSVS%\VC\Auxiliary\Build\vcvarsall.bat" %VCVARSPLAT%
