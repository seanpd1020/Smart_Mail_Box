@echo off
echo Open 140.116.20.168 21>>upload.txt
echo Sean>>upload.txt
echo nckucsie>>upload.txt
echo prompt>>upload.txt
echo cd /client1/music>>upload.txt
echo mput *.mp3>>upload.txt
echo bye>>upload.txt
ftp -s:upload.txt
del upload.txt
del *.mp3
quit