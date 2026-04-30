form: "Options"
	boolean: "option", "Off"
endform

objects# = selected# ()

file_names$ = ""

for i to size (objects#)
	selectObject: objects# [i]
	object_info$ = Info
	file_name$ = extractLine$(object_info$, "Associated file: ")
	file_names$ = file_names$ + file_name$
	if i < size (objects#)
		file_names$ = file_names$ + " " 
	endif
endfor

selectObject (objects#)

autodetAppPath$ = ""
praatPath$ = ""

if windows
	autodetAppPath$ = "DemoAutodetApp"
	praatPath$ = ""
elif macintosh
	autodetAppPath$ = "/Applications/AutodetLMApp/application/run_AutodetLMApp.sh"
	praatPath$ = "/Applications/Praat.app/Contents/MacOS/Praat"
else

endif

if windows
	output$ = runSubprocess$(autodetAppPath$, praatPath$, file_names$)
elif macintosh
	appendInfoLine: autodetAppPath$ + " /Applications/MATLAB/MATLAB_Runtime/R2025a " + praatPath$ + " " + file_names$
	output$ = runSubprocess$(autodetAppPath$, "/Applications/MATLAB/MATLAB_Runtime/R2025a", praatPath$, file_names$)
else 

endif


appendInfoLine: output$