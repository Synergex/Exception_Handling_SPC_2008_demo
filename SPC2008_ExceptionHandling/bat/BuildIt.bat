rem
rem This command file we rebuild the sample
rem

set SYNEXPDIR=%DEVROOT%\Applications\hdr
set SYNIMPDIR=%DEVROOT%\Applications\hdr

del /F /S /Q %DEVROOT%\*.dbo
del /F /S /Q %DEVROOT%\*.dbh
del /F /S /Q %DEVROOT%\*.olb

dblproto %DEVROOT%\applications\src\ExceptionHandling\AppExceptions.dbl
dbl -d -TXW  -o %DEVROOT%\applications\obj\exceptionhandling\AppExceptions.DBO %DEVROOT%\applications\src\ExceptionHandling\AppExceptions.dbl
dblibr -ca %DEVROOT%\applications\lib\PSGSubs.OLB
dblibr -w -r %DEVROOT%\applications\lib\PSGSubs.OLB  %DEVROOT%\applications\obj\exceptionhandling\AppExceptions.DBO
dblink -d -l %DEVROOT%\exe\PSGSubs.ELB %DEVROOT%\applications\lib\PSGSubs.OLB
dbl -d -TXW  -o %DEVROOT%\applications\obj\exceptionhandling\try_catch.DBO %DEVROOT%\applications\src\ExceptionHandling\try_catch.dbl
dblink -d -o %DEVROOT%\exe\try_catch.DBR %DEVROOT%\applications\obj\exceptionhandling\try_catch.DBO  EXE:PSGSubs.ELB RPSLIB:ddlib.elb DBLDIR:synxml.elb DBLDIR:axlib.elb  WND:tklib.elb
dbl -d -TXW  -o %DEVROOT%\applications\obj\exceptionhandling\basic_error_trapping.DBO %DEVROOT%\applications\src\ExceptionHandling\basic_error_trapping.dbl
dblink -d -o %DEVROOT%\exe\basic_error_trapping.DBR %DEVROOT%\applications\obj\exceptionhandling\basic_error_trapping.DBO  EXE:PSGSubs.ELB RPSLIB:ddlib.elb DBLDIR:synxml.elb DBLDIR:axlib.elb  WND:tklib.elb
dbl -d -TXW  -o %DEVROOT%\applications\obj\exceptionhandling\catch_specific_errors.DBO %DEVROOT%\applications\src\ExceptionHandling\catch_specific_errors.dbl
dblink -d -o %DEVROOT%\exe\catch_specific_errors.DBR %DEVROOT%\applications\obj\exceptionhandling\catch_specific_errors.DBO  EXE:PSGSubs.ELB RPSLIB:ddlib.elb DBLDIR:synxml.elb DBLDIR:axlib.elb  WND:tklib.elb
dbl -d -TXW  -o %DEVROOT%\applications\obj\exceptionhandling\application_error_processing.DBO %DEVROOT%\applications\src\ExceptionHandling\application_error_processing.dbl
dblink -d -o %DEVROOT%\exe\application_error_processing.DBR %DEVROOT%\applications\obj\exceptionhandling\application_error_processing.DBO  EXE:PSGSubs.ELB RPSLIB:ddlib.elb DBLDIR:synxml.elb DBLDIR:axlib.elb  WND:tklib.elb

