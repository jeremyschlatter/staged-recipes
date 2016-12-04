setlocal enableextensions enabledelayedexpansion

rem Already built, just need to copy.
md "%PREFIX%\go"
robocopy . "%PREFIX%\go" /s /e
robocopy %PREFIX%\go\bin\* %PREFIX%\bin\
rem del %PREFIX%\go\conda_bld.bat

rem Set up hooks to manage $GOROOT on conda env activation/deactivation
rem Based on https://anaconda.org/insertinterestingnamehere/orfeo
set ACTIVATE_DIR="%PREFIX%\etc\conda\activate.d"
set DEACTIVATE_DIR="%PREFIX%\etc\conda\deactivate.d"
md %ACTIVATE_DIR%
md %DEACTIVATE_DIR%
robocopy "%RECIPE_DIR%\activate.bat" "%ACTIVATE_DIR%\golang_set_goroot.bat"
robocopy "%RECIPE_DIR%\deactivate.bat" "%DEACTIVATE_DIR%\golang_unset_goroot.bat"
