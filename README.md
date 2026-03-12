# kdhv

 Ultimate Hyper-V & Device Guard Killer v3.6A professional-grade automation suite designed to completely disable Hyper-V, VBS (Virtualization-Based Security), and HVCI (Memory Integrity) on Windows systems. 
  This tool is essential for achieving 100% hardware performance in:
   * Nested Virtualization 
   * High-performance Gaming (Anti-cheat compatibility)
   * Complex Emulator Environments

Key Features
  * Deep Clean: Removes all Hyper-V related Windows features via DISM.
  * Security Opt-Out: Disables Device Guard, Credential Guard, and HVCI via Registry and BCD.
  * Official Integration: Powered by a customized version of the Microsoft DG Readiness Tool v3.6.
  * Logging: Detailed execution logs are saved at C:\DGLogs for audit and troubleshooting.

Installation & Usage
1. Preparation
  Download: Clone this repository or download the ZIP.
  Setup: Ensure all files (especially .ps1 and .p7b files) are in the same folder.

2. Execution
  Run: Right-click HyperV_killer_v3.bat and select "Run as Administrator".
  Automated Step: The system will process DISM features and registry keys, then reboot automatically.

  [!IMPORTANT] BIOS/UEFI INTERACTION:
  During the boot sequence, a blue screen (Opt-out) will appear. You MUST press F3 to confirm the removal of Credential Guard/VBS settings.

[!CAUTION] Disclaimer

This tool reduces the security posture of the OS by disabling Virtualization-Based Security (VBS).
* It is intended for lab environments, gaming optimization, and development purposes.
* Use at your own risk.

#DevOps #Sudo2go #WindowsInternals #Virtualization #OpenSource #PerformanceOptimization #ITExpert  
#ITConsultant #SysAdmin #HyperV #VBS #Windows10 #Windows11 #DevOpsLife
