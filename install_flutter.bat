@echo off
cd C:\Users\User\Downloads\flutter_windows_3.16.9-stable\flutter
if exist .git (
    git pull
) else (
    git clone https://github.com/flutter/flutter.git
)
cd ..
C:\Users\User\Downloads\flutter_windows_3.16.9-stable\flutter\bin\flutter doctor
C:\Users\User\Downloads\flutter_windows_3.16.9-stable\flutter\bin\flutter clean
C:\Users\User\Downloads\flutter_windows_3.16.9-stable\flutter\bin\flutter config --enable-web
