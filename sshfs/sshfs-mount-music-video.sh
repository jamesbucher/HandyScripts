SSWD=""
read -s PASSWD
echo $PASSWD | sshfs -o password_stdin james@bucherj.no-ip.org:/archives/Video ~/Videos
echo $PASSWD | sshfs -o password_stdin james@bucherj.no-ip.org:/archives/Music ~/Music

