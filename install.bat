@echo off

:: Project paths
SET NODE_PATH=%~dp0node-v8.3.0-win-x86
SET BOT_ROOT=%~dp0viseo-bot-project
SET FRAMEWORK_ROOT=%~dp0viseo-bot-framework

:: Call NPM with right NodeJS
SET PATH=%NODE_PATH%;%PATH%
::CD %FRAMEWORK_ROOT%
::npm install

CD %BOT_ROOT%
npm install