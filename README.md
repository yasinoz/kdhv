# kdhv
Ultimate Hyper-V &amp; Device Guard Killer (v3.6)

A professional-grade automation suite designed to completely disable Hyper-V, VBS (Virtualization-Based Security), and HVCI (Memory Integrity) on Windows systems. This tool is essential for achieving 100% hardware performance in nested virtualization, high-performance gaming (Anti-cheat compatibility), and complex emulator environments.

Key FeaturesDeep Clean: Removes all Hyper-V related Windows features via DISM. Security Opt-Out: Disables Device Guard, Credential Guard, and HVCI via Registry and BCD. Official Integration: Powered by a customized version of the Microsoft DG Readiness Tool (v3.6). Logging: Detailed execution logs saved at C:\DGLogs for audit and troubleshooting.

Installation & Usage
Download: Clone this repository or download the ZIP.
Setup: Ensure all files (especially .ps1 and .p7b files) are in the same folder. 
Run: Right-click HyperV_killer_v3.bat and select Run as Administrator. 
BIOS/UEFI Interaction: * The system will reboot automatically. 
Crucial: During the boot sequence, a blue screen (Opt-out) will appear. You must press F3 to confirm the removal of Credential Guard/VBS settings.

Disclaimer
This tool reduces the security posture of the OS by disabling VBS. It is intended for lab environments, gaming optimization, and development purposes. Use at your own risk.
