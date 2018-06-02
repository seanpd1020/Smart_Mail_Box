ftp -n 140.116.20.10 << EOF
user Sean nckucsie
prompt
cd client1
mget mail.pdf
delete mail.pdf
quit EOF
mv /home/pi/mail.pdf /home/pi/FTP_Project/
lp -o scaling=50 -d EPSON_AL-M2010 mail.pdf
del mail.pdf
