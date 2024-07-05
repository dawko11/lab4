echo '#1/bin/bash' > skrypt.sh	
echo 'if [[ $1 == "--date" ]]; then' >> skrypt.sh
echo '  date' >> skrypt.sh
echo 'fi' >> skrypt.sh
chmod +x skrypt.sh
