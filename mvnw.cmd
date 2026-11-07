@echo off
setlocal
set MAVEN_VERSION=3.9.11
set MAVEN_CACHE=%USERPROFILE%\.m2\wrapper\dists\apache-maven-%MAVEN_VERSION%
set MAVEN_CMD=
for /d %%D in ("%MAVEN_CACHE%\*") do if exist "%%~D\bin\mvn.cmd" set MAVEN_CMD=%%~D\bin\mvn.cmd
if not defined MAVEN_CMD if exist "%MAVEN_CACHE%\bin\mvn.cmd" set MAVEN_CMD=%MAVEN_CACHE%\bin\mvn.cmd
if not defined MAVEN_CMD (
  powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0.mvn\wrapper\download-maven.ps1" -Version "%MAVEN_VERSION%" -Destination "%MAVEN_CACHE%"
  if errorlevel 1 exit /b %errorlevel%
  if exist "%MAVEN_CACHE%\bin\mvn.cmd" set MAVEN_CMD=%MAVEN_CACHE%\bin\mvn.cmd
)
if not defined MAVEN_CMD (
  echo Maven could not be found after download.
  exit /b 1
)
"%MAVEN_CMD%" -f "%~dp0backend\pom.xml" %*
exit /b %errorlevel%
