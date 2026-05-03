if [ $# == 0 ]; then
	/Applications/Praat.app/Contents/MacOS/Praat --run install.praat
else
	echo $1
	mkdir "$1/plugin_autodetLM"
	cp ./setup.praat "$1/plugin_autodetLM"
	cp ./run_autodetLM.praat "$1/plugin_autodetLM"
	cp ./open_autodetLM.praat "$1/plugin_autodetLM"
fi
