dir /b /on C:\Users\User\Desktop\FTP\client1 >list.txt
@echo off
for /f "tokens=*" %%i in (list.txt) do (
	cd C:\Users\User\Desktop\FTP\client1\%%i
	ren *.docx %%i.docx
	IF EXIST %%i.docx (
	C:\Users\User\Desktop\TEST\upload\doc2pdf_server %%i.docx
	del %%i.docx
	echo >> %%i.png
	move %%i.pdf ..
	move %%i.png ..
	)
)
del list.txt
quit