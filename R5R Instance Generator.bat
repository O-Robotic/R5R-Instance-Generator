@echo off

echo R5R Instance Maker by Robotic#2623

echo:


Rem Config Stuff



set gamelocation=C:\R5R


Rem End of config stuff



Rem set install folders

set game_files=game_files

set core=core_game
set scripts=scripts
set detours=detours


Rem instance to make
echo Set instance name (No spaces)
set /p dir=""

if "%dir%"=="" goto end

echo Install detours and scripts (Y/N)
set /p yn=""


Rem Sanity Check before writing to files
echo The Instance will be made in the this folder
echo %gamelocation%\%dir%\
echo Do you want to continue (Y/N)
set /p safety_first=""

if /i "%safety_first%"=="y" goto start_install
if /i "%safety_first%"=="n" goto end


:start_install
Rem make the folder for the instance
mkdir %gamelocation%\%dir%\

Rem Directory link all folders
mklink /d  "%gamelocation%\%dir%\audio" "%gamelocation%\%game_files%\%core%\audio\"
mklink /d  "%gamelocation%\%dir%\bin" "%gamelocation%\%game_files%\%core%\bin\" 
mklink /d  "%gamelocation%\%dir%\materials" "%gamelocation%\%game_files%\%core%\materials\" 
mklink /d  "%gamelocation%\%dir%\media" "%gamelocation%\%game_files%\%core%\media\" 
mklink /d  "%gamelocation%\%dir%\paks" "%gamelocation%\%game_files%\%core%\paks\" 
mklink /d  "%gamelocation%\%dir%\stbsp" "%gamelocation%\%game_files%\%core%\stbsp\"

Rem Link all individual files
mklink  "%gamelocation%\%dir%\amd_ags_x64.dll" "%gamelocation%\%game_files%\%core%\amd_ags_x64.dll"
mklink  "%gamelocation%\%dir%\bink2w64.dll" "%gamelocation%\%game_files%\%core%\bink2w64.dll"
mklink  "%gamelocation%\%dir%\binkawin64.dll" "%gamelocation%\%game_files%\%core%\binkawin64.dll"
mklink  "%gamelocation%\%dir%\mileswin64.dll" "%gamelocation%\%game_files%\%core%\mileswin64.dll"
mklink  "%gamelocation%\%dir%\r5apex.exe" "%gamelocation%\%game_files%\%core%\r5apex.exe"
mklink  "%gamelocation%\%dir%\r5apexdata.bin" "%gamelocation%\%game_files%\%core%\r5apexdata.bin"



Rem Make vpk dir so mklink works
mkdir  "%gamelocation%\%dir%\vpk"
Rem Link vpks individually so replacing vpks doesnt affect core files like if i did a dir sym link
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_000.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_000.vpk"
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_001.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_001.vpk"
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_002.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_002.vpk"
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_003.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_003.vpk"
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_004.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_004.vpk"
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_005.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_005.vpk"
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_006.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_006.vpk"
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_007.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_007.vpk"
mklink "%gamelocation%\%dir%\vpk\client_frontend.bsp.pak000_008.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_frontend.bsp.pak000_008.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_common.bsp.pak000_000.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_common.bsp.pak000_000.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_common.bsp.pak000_001.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_common.bsp.pak000_001.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_common.bsp.pak000_002.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_common.bsp.pak000_002.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_common.bsp.pak000_003.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_common.bsp.pak000_003.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_common.bsp.pak000_004.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_common.bsp.pak000_004.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_common.bsp.pak000_005.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_common.bsp.pak000_005.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_common.bsp.pak000_006.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_common.bsp.pak000_006.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_common.bsp.pak000_007.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_common.bsp.pak000_007.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_64k_x_64k.bsp.pak000_000.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_64k_x_64k.bsp.pak000_000.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_64k_x_64k.bsp.pak000_001.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_64k_x_64k.bsp.pak000_001.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_64k_x_64k.bsp.pak000_002.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_64k_x_64k.bsp.pak000_002.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_64k_x_64k.bsp.pak000_003.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_64k_x_64k.bsp.pak000_003.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_000.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_000.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_001.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_001.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_002.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_002.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_003.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_003.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_004.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_mu1.bsp.pak000_004.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_mu1_night.bsp.pak000_000.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_mu1_night.bsp.pak000_000.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_mu1_night.bsp.pak000_001.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_mu1_night.bsp.pak000_001.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_mu1_night.bsp.pak000_002.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_mu1_night.bsp.pak000_002.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_000.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_000.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_001.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_001.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_002.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_002.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_003.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_003.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_004.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_canyonlands_staging.bsp.pak000_004.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_desertlands_64k_x_64k.bsp.pak000_000.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_desertlands_64k_x_64k.bsp.pak000_000.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_desertlands_64k_x_64k.bsp.pak000_001.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_desertlands_64k_x_64k.bsp.pak000_001.vpk"

mklink "%gamelocation%\%dir%\vpk\enable.txt" "%gamelocation%\%game_files%\%core%\vpk\enable.txt"

Rem VPKS that detours install touches
Rem mklink "%gamelocation%\%dir%\vpk\englishclient_frontend.bsp.pak000_dir.vpk" "%gamelocation%\%core%\vpk\englishclient_frontend.bsp.pak000_dir.vpk"
Rem mklink "%gamelocation%\%dir%\vpk\englishclient_mp_common.bsp.pak000_dir.vpk" "%gamelocation%\%core%\vpk\englishclient_mp_common.bsp.pak000_dir.vpk"
Rem mklink "%gamelocation%\%dir%\vpk\englishserver_mp_common.bsp.pak000_dir.vpk" "%gamelocation%\%core%\vpk\englishserver_mp_common.bsp.pak000_dir.vpk"
Rem mklink "%gamelocation%\%dir%\vpk\server_mp_common.bsp.pak000_000.vpk" "%gamelocation%\%core%\vpk\server_mp_common.bsp.pak000_000.vpk"



mklink "%gamelocation%\%dir%\vpk\englishclient_mp_rr_canyonlands_64k_x_64k.bsp.pak000_dir.vpk" "%gamelocation%\%game_files%\%core%\vpk\englishclient_mp_rr_canyonlands_64k_x_64k.bsp.pak000_dir.vpk"
mklink "%gamelocation%\%dir%\vpk\englishclient_mp_rr_canyonlands_mu1.bsp.pak000_dir.vpk" "%gamelocation%\%game_files%\%core%\vpk\englishclient_mp_rr_canyonlands_mu1.bsp.pak000_dir.vpk"
mklink "%gamelocation%\%dir%\vpk\englishclient_mp_rr_canyonlands_mu1_night.bsp.pak000_dir.vpk" "%gamelocation%\%game_files%\%core%\vpk\englishclient_mp_rr_canyonlands_mu1_night.bsp.pak000_dir.vpk"
mklink "%gamelocation%\%dir%\vpk\englishclient_mp_rr_canyonlands_staging.bsp.pak000_dir.vpk" "%gamelocation%\%game_files%\%core%\vpk\englishclient_mp_rr_canyonlands_staging.bsp.pak000_dir.vpk"
mklink "%gamelocation%\%dir%\vpk\englishclient_mp_rr_desertlands_64k_x_64k.bsp.pak000_dir.vpk" "%gamelocation%\%game_files%\%core%\vpk\englishclient_mp_rr_desertlands_64k_x_64k.bsp.pak000_dir.vpk"



Rem WE after dark vpks
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_desertlands_64k_x_64k_nx.bsp.pak000_000.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_desertlands_64k_x_64k_nx.bsp.pak000_000.vpk"
mklink "%gamelocation%\%dir%\vpk\client_mp_rr_desertlands_64k_x_64k_nx.bsp.pak000_001.vpk" "%gamelocation%\%game_files%\%core%\vpk\client_mp_rr_desertlands_64k_x_64k_nx.bsp.pak000_001.vpk"
mklink "%gamelocation%\%dir%\vpk\englishclient_mp_rr_desertlands_64k_x_64k_nx.bsp.pak000_dir.vpk" "%gamelocation%\%game_files%\%core%\vpk\englishclient_mp_rr_desertlands_64k_x_64k_nx.bsp.pak000_dir.vpk"

Rem Ash's Redemption?





Rem copy config files so can be editied per instance if desired
Xcopy /E /I "%gamelocation%\%game_files%\%core%\platform" "%gamelocation%\%dir%\platform"
Xcopy /E /I "%gamelocation%\%game_files%\%core%\cfg" "%gamelocation%\%dir%\cfg"

if /i "%yn%"=="y" goto install_detours
if /i "%yn%"=="n" goto end


:install_detours

Xcopy /E /I /C /Y "%gamelocation%\%game_files%\%detours%\" "%gamelocation%\%dir%\"
Xcopy /E /I /C /Y "%gamelocation%\%game_files%\%scripts%\" "%gamelocation%\%dir%\platform\scripts\"

:end