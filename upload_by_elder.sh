mv /home/pi/FTP_Project/*.jpg /home/pi/FTP_Project/mail.jpg 
ftp -n 140.116.20.10 << EOF
user Sean nckucsie
prompt
cd client1
mput mail.jpg
quit
EOF
rm /home/pi/FTP_Project/mail.jpg 
