@Echo Off
SetLocal EnableDelayedExpansion

for /f "tokens=*" %%a in (tests.txt) do (

    set /A problem = 0
	
	echo ================================== COMPILING PROGRAM %%a  =======================================
	echo ========================================================================================================
	
    %1 tests\%%a
	
    if !errorlevel! == 0 (
		if exist inputs\%%a (
			lli.exe tests\%%a.ll < inputs\%%a > results\%%a
		) else (
			lli.exe tests\%%a.ll > results\%%a
		)
		if NOT !%errorlevel! == 0 (
			set /A problem = 4
			)
	) else (
		if !errorlevel! LSS 0 (
			set /A problem = 5
		) else (
		set /A problem = 1
		)
	)
	
	if !problem! == 1 (
		echo error> results\%%a
	)
	if !problem! == 2 (
		echo ilasm_error> results\%%a
	)
	if !problem! == 3 (
		echo peverify_error> results\%%a
	)
	if !problem! == 4 (
		echo different_error> results\%%a
	)
	
	if !problem! == 5 (
		echo compiler_error> results\%%a
	)
)

echo =============================================================================================================
echo ================================== COMPILATION FINISHED ======================================================
echo =================================== COMPARING THE RESULTS =====================================================

echo ERRORS DETECTED: > errors.txt
set ers=0
set total=0
for /f "tokens=*" %%a in (tests.txt) do (

	fc results\%%a expected_results\%%a
	if not !errorlevel! == 0 (
		fc results\%%a expected_results\%%a >> errors.txt
		set /a ers=ers+1
	)
	set /a total=total+1
)
echo TOTAL ERRORS:  %ers% / %total%
echo TOTAL ERRORS:  %ers% / %total% >> errors.txt
