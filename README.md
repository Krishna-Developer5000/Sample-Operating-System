# Sample-Operating-System
Operating System for learning about the fundamentals, This includes all the necessary files.

## 1. Downloading the Repo
First, find a green button called 'Code'. You will find a dropdown. Click the button 'Download ZIP', or open Git (if installed) and type this command:

`git clone https://github.com/Krishna-Developer5000/Sample-Operating-System.git`

Depending on your internet connection, cloning or downloading may take sometime.
After its installed, you are ready for Step 2.

## 2. Opening the Repository

Now, we can open the Repository.
In Visual Studio 2022:
  1. Open Visual Studio 2022 via Windows Key + S, then search 'Visual Studio 2022'
  2. Click 'Create Project'
  3. Click 'CMake Project' (this requires the C++ Workload to be installed. If not, go to Extra Steps section. Also, you can delete CMakeLists.txt if already one is generated.)
  4. Name your project (e.g: Sample OS Project)
     <img width="961" height="1045" alt="image" src="https://github.com/user-attachments/assets/5760f7e9-f6a2-4797-9684-cb3c99c8e8fc" />
  5. Click 'File', then in dropdown, select 'Open' -> Project/Solution
     <img width="456" height="368" alt="image" src="https://github.com/user-attachments/assets/2066bf7f-ab5b-4702-8c90-192799f238c4" />
  6. Select the Repository (if ZIP, usually C:\Users\<Your-Name>\Downloads\, if Cloned, it should be wherever you typed the command from (example: If you opened Git Bash, without cd "path", then it will be in same spot.))
  7. Find 'run.bat'
  8. Add it to your PATH:
     a. Windows + S, then search 'env'

     b. Click 'Environment Variables...'

     c. Double Click 'Path

     d. Click 'New'

     e. Type the Absolute PATH to your run.bat file (if VS 2022, C:\Users\<your-name>\source\repos.)

     f. Click 'OK', then 'OK' again, then 'OK'.

     g. Restart your terminal and run this (preferrably Command Prompt or Developer Command Prompt for VS 2022):

     `run.bat`

     h. You should see 'K' in QEMU (if not installed, go to Extra Steps section)

## Extra Steps
If you did not install Visual Studio 2022, you can follow this steps:
1. In your search engine, type 'Visual Studio 2022 Download' on the search bar. (or go to this direct download: https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&channel=Release&version=VS2022&source=VSLandingPage&cid=2030&passive=false)
2. Find something that says 'Visual Studio & VS Code Downloads for WIndows, Mac, Linux'
3. In the section 'Visual Studio 2022', click 'Free download'
4. You  might see 'VisualStudioSetup.exe', Click the arrow button which has a square combined
5. Wait for the Visual Studio installer to do its thing.
6. Now, click 'Desktop developement with C++' workload.
7. It will give a UAC prompt, just click 'Yes', not such a big deal unless its something bad.
8. It will take some time to install depending on your internet connection.
9. Restart VS
10. Go to Step 2.

If you did not install QEMU, follow these steps:

1. Go to this site: https://qemu.eu/w64/2021/
2. Click 'qemu-w64-setup-20210203.exe'
3. Open the installer.
4. Finish the installation wizard.
5. Go to Step 2 to run the OS.

WARNING: Do not edit kernel.c or boot.asm as it could corrupt your system. If you want to edit, consider using somebody you know who knows NASM and C, then change it. Otherwise, Understand the code.

This is optional. But if you want to have Git Installed, follow these steps:
1. In your search engine, type 'Git Download' (or go to this direct link: https://git-scm.com/downloads)
2. Click 'Windows' above 'Downloads'
   <img width="921" height="695" alt="image" src="https://github.com/user-attachments/assets/91f320e3-e814-43d8-9dae-d913db37e674" />
3. Download the standalone installer (do not select x64 if you are in ARM64, do not select ARM64 if you are on x64.)
4. After download, open the Git installer (ususally named as 'Git-2.51.0-64-bit.exe')
5. Finish the Setup Wizard

If you want to use winget (only if you have it installed):
1. Open Powershell
2. Type this command:

   `winget install --id Git.Git -e --source winget`
3. Wait for it to finish installing.
4. See if you have all of these installed:
   a. Git Bash
   b. Git GUI
   c. Git CMD
   If you dont have all of these, installation might be corrupted. Consider reinstalling or use the Standalone Installer.
5. In Command prompt, type this:

   `git --version`
6. You should see soemthing like: `git version <version<<os><version>`
7. If it shows, you are ready to clone the repo via the Downloading the Repo step.
