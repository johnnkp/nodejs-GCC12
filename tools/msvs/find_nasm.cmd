@IF NOT DEFINED DEBUG_HELPER @ECHO OFF

ECHO Looking for NASM

FOR /F "delims=" %%a IN ('where nasm 2^> NUL') DO (
  EXIT /B 0
)

IF EXIST "%ProgramFiles%\NASM\nasm.exe" (
  SET "Path=%Path%;%ProgramFiles%\NASM"
  EXIT /B 0
)

IF EXIST "%ProgramFiles(x86)%\NASM\nasm.exe" (
  SET "Path=%Path%;%ProgramFiles(x86)%\NASM"
  EXIT /B 0
)

if EXIST "%LOCALAPPDATA%\bin\NASM\nasm.exe" (
  SET "Path=%Path%;%LOCALAPPDATA%\bin\NASM"
  EXIT /B 0
)

IF EXIST "%ProgramFiles%\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\bin\Hostx64\x64\ml64.exe" (
  SET "Path=%Path%;%ProgramFiles%\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\bin\Hostx64\x64"
  EXIT /B 0
)

EXIT /B 1
