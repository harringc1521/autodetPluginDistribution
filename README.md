# AutodetLM Installer

Collin Harrington, Union College

email: harringc@union.edu

Building on Janette (Jan) Park's AutodetLM system @MIT with 
the Speech Communications Group (SG)

This repository hosts installation files and directions to
install the SG's system on multiple platforms. 

## Prerequisites

Ensure an up to date version of Praat is installed on your system

Being able to locate the Praat application is important for
Windows installation

## Installation

Navigate to the GitHub releases tab in this repository (right side of the screen)

Select the release corresponding to your platform (mac or windows)

In the "Assets" of the release, download the .zip file

Ensure the .zip folder is extracted then follow the steps 
corresponding to your platform below

### Windows

In the extracted folder run "install.batch" by double clicking
it.

Windows will notify you that an unknown publisher is attempting
to install files. You can click "see more" and a "run anyway" 
button will appear. Press "run anyway".

The installer will open a terminal window prompting you to paste
in your Praat path. This is the path to the Praat executable on
your system. To get this path select your Praat.exe in the file
explorer and use the shortcut ctrl+shift+c OR right click and 
select "copy as path". To paste the path into the terminal window, 
right click in the terminal. DO NOT close this terminal. 

Additionally, a MATLAB runtime installer is starting up. It may
take a few minutes for it to appear. You can tell the process is
still running as long as the aforementioned terminal window is open. 

Once it appears it will guide you through a series of steps to finish
installing everything required. Please use the default locations the
program provides. 

When this completes and the terminal window has closed, the program has
been sucessfully installed!

### Mac

Open the terminal.app: press cmd+space, search terminal and press enter. 

In the terminal paste 
cd `~/Downloads/mac`

Then paste
`./install.sh`

After some time a MATLAB Runtime Installer pop-up should appear

Once it appears it will guide you through a series of steps to finish
installing everything required. Please use the default locations the
program provides. 

The installer will tell you that you may need to set your "DYLD_LIBRARY_PATH"
You may skip this step. 

## After Installing

Next time you open Praat and select some .wav files a "Run AutodetLM" button
will appear in the bottom right of the object window.

Select any number of .wav files and press the button. After some time
corresponding TextGrid files will be added to your object window!
