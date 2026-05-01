echo off

set /A numArgs=0
for %%x in (%*) do set /A numArgs+=1

if %numArgs% == 0 (
    goto :getDir
) else (
    goto :install
)

goto :eof

:getDir
    set /p praatPath= Paste your Praat path: 
    CALL %praatPath% --run install.praat
    goto :eof

:install
    if not exist "%1\plugin_autodetLM" ( mkdir "%1\plugin_autodetLM" )
    copy /y .\setup.praat "%1\plugin_autodetLM"
    copy /y .\run_autodet.praat "%1\plugin_autodetLM"
    copy /y .\open_autodet.praat "%1\plugin_autodetLM"
    goto :eof
