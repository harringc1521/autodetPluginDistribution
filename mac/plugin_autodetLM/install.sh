if [ $# == 0 ]; then
	/Applications/Praat.app/Contents/MacOS/Praat --run getPreferencesFolder.praat
else
	echo $1
	mkdir "$1/plugin_autodetLM"
	cp ./* "$1/plugin_autodetLM"
fi
