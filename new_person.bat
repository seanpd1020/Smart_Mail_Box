@echo off
set /p name="請輸入要新增的ID > "
echo open 140.116.20.37 21>> newfile.txt
echo Sean>> newfile.txt
echo nckucsie>> newfile.txt
echo cd client1>>newfile.txt
echo mkdir %name%>> newfile.txt
echo bye>> newfile.txt
ftp -s:newfile.txt
del newfile.txt
quit