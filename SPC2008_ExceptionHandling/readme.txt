SPC 2008 Exception Handling.

Minimum version V9.1.4c required to build and execute this example.

This project demonstrates the ability to catch and throw Synergy Exceptions.
It was demonstrated at the 2008 SPC.

Extract the zip file onto you C: drive.  If you extract it onto a differently
lettered drive ensure you change the \SPC2008_ExceptionHandling\setup.bat file
to use the correct drive letter.

The Workbench workspace can be found in the \SPC2008_ ExceptionHandling \prj
folder, named SPC2008_ ExceptionHandling.

If you do not have workbench, open a command window and navigate to
the \SPC2008_ ExceptionHandling  folder.  Run the setup.bat batch file.
This will configure the base environment,

To run the program in Workbench, select the file your wish to run from
the project explore window and select the Execute entry from the Build
menu.  To run the program from the command line, type:

dbr exe:basic_error_trapping
dbr exe:try_catch
dbr exe:catch_specific_errors
dbr exe:application_error_processing

If you need to rebuild the sample application then from the command window
use the following commands:

Buildit.bat

