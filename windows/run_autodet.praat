form: "Options"
	boolean: "option", "Off"
	word: "module", "norm_comp"
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
	autodetAppPath$ = "C:\Program Files\AutodectionApp\application\DemoAutodetApp.exe"
	praatPath$ = readFile$ ("config.txt")
elif macintosh
	autodetAppPath$ = "/Applications/AutodetLMApp/application/run_AutodetLMApp.sh"
	praatPath$ = "/Applications/Praat.app/Contents/MacOS/Praat"
else

endif

appendInfoLine: autodetAppPath$
appendInfoLine: praatPath$
appendInfoLine: module$
appendInfoLine: file_names$

if windows
	asynchronous runSubprocess: autodetAppPath$, praatPath$, module$, file_names$
elif macintosh
	asynchronous runSubprocess: autodetAppPath$, "/Applications/MATLAB/MATLAB_Runtime/R2025a", praatPath$, module$, file_names$
else 

endif