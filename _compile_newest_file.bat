:: @brief Find the newest .rs file in a folder and compile it with rustc
:: @author Decameron

@echo off
for /f "delims=" %%f in ('dir /b /a-d /od /tw %cd%\*.rs') do (
  set file=%%f
)

echo The newest file is: %file%
echo Compiling %file% with RUSTC...
call %userprofile%\.cargo\bin\rustc %file%
