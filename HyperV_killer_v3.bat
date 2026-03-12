@echo off
TITLE Ultimate Hyper-V & Device Guard Killer
setlocal EnableDelayedExpansion

:: Administrator Check
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [!] ERROR: Please run this script as ADMINISTRATOR.
    pause
    exit /b
)

:: Get current script directory to find the PS1 file
set "ScriptDir=%~dp0"
set "PS1File=%ScriptDir%DG_Readiness_Tool_v3.6.ps1"

echo ==========================================================
echo    Stage 1: Disabling Windows Features & BCD
echo ==========================================================
dism /online /disable-feature /featurename:Microsoft-Hyper-V-All /norestart
dism /online /disable-feature /featurename:VirtualMachinePlatform /norestart
dism /online /disable-feature /featurename:HypervisorPlatform /norestart
bcdedit /set hypervisorlaunchtype off

echo [*] Disabling Memory Integrity via Registry...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 0 /f

echo ==========================================================
echo    Stage 2: Running Microsoft DG Readiness Tool
echo ==========================================================

if exist "%PS1File%" (
    echo [*] PS1 file found at: "%PS1File%"
    powershell.exe -ExecutionPolicy Bypass -Command "& '%PS1File%' -Disable -AutoReboot"
) else (
    echo [!] ERROR: %PS1File% NOT FOUND.
    echo [!] Make sure the .ps1 file is in the SAME FOLDER as this .bat file.
    pause
    exit /b
)

echo ==========================================================
echo    PROCESS COMPLETE!
echo    The system will reboot in 10 seconds.
echo    IMPORTANT: If a blue screen asks to "Disable CG", press F3.
echo ==========================================================
timeout /t 10
shutdown /r /t 0