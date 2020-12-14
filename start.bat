@set PoolHost=ap.luckpool.net
@set Port=3956
@set PublicVerusCoinAddress=RF2AJZ4AgwRzKGRU5GQFNhnJHhUKSRkt8p
@set WorkerName=x230
@set Threads=2

@call :GET_CURRENT_DIR
@cd %THIS_DIR%
nheqminer.exe -v -l %PoolHost%:%Port% -u %PublicVerusCoinAddress%.%WorkerName% -t %Threads%  %1 %2 %3 %4 %5 %6 %7 %8 %9
pause
@goto :EOF

:GET_CURRENT_DIR
@pushd %~dp0
@set THIS_DIR=%CD%
@popd
@goto :EOF
