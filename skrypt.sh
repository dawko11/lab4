echo 'elif [[ $1 == "--logs" ]]; then' >> skrypt.sh
echo '  num=${2:-100}' >> skrypt.sh
echo '  for ((i=1; i<=num; i++)); do' >> skrypt.sh
echo '    filename="log${i}.txt"' >> skrypt.sh
echo '    echo "Filename: $filename" > $filename' >> skrypt.sh
echo '    echo "Script: skrypt.sh" >> $filename' >> skrypt.sh
echo '    date >> $filename' >> skrypt.sh
echo '  done' >> skrypt.sh
