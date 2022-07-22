:: 2022-07-22
:: Manuel Fuica Morales, Carlos Jimenez Gallardo
:: Configuracion Inicial Laptops DME
:: ######################################################
:: Check if current cmd has admin privileges
:: Source: https://stackoverflow.com/questions/4051883/batch-script-how-to-check-for-admin-rights
@echo off
goto check_Permissions
:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Exito: sesion actual tiene privilegios de admin.
    ) else (
        echo Fracaso: sesion actual no tiene privilegios de admin.
        echo Inicie este script con privilegios de administrador.
    )

    pause >nul
:: ######################################################
:: Install package manager
:: - Source: https://docs.chocolatey.org/en-us/choco/setup
:: @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install packages
:: choco install -y googlechrome firefox libreoffice-fresh adobereader texmaker vlc winrar aimp r.project r.studio geogebra-classic.install

:: Prevent auto-close cmd when script ends
pause
:: ######################################################
