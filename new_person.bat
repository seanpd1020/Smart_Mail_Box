@echo off
set /p name="�п�J�n�s�W��ID > "
echo open 140.116.20.37 21>> newfile.txt
echo Sean>> newfile.txt
echo nckucsie>> newfile.txt
echo cd client1>>newfile.txt
echo mkdir %name%>> newfile.txt
echo bye>> newfile.txt
ftp -s:newfile.txt
del newfile.txt
quit