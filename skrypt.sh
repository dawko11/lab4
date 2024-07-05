echo 'elif [[ $1 == "-h" || $1 == "--help" ]]; then' >> skrypt.sh
echo '  echo "Available options:"' >> skrypt.sh
echo '  echo "--date, -d: Display current date"' >> skrypt.sh
echo '  echo "--logs [num], -l [num]: Create num log files (default: 100)"' >> skrypt.sh
echo '  echo "--help, -h: Display help"' >> skrypt.sh
echo '  echo "--init: Clone the repository and set PATH"' >> skrypt.sh
echo '  echo "--error [num], -e [num]: Create num error files (default: 100)"' >> skrypt.sh
echo 'elif [[ $1 == "-d" || $1 == "--date" ]]; then' >> skrypt.sh
echo '  date' >> skrypt.sh
echo 'elif [[ $1 == "-l" || $1 == "--logs" ]]; then' >> skrypt.sh
echo '  num=${2:-100}' >> skrypt.sh
echo '  for ((i=1; i<=num; i++)); do' >> skrypt.sh
echo '    filename="log${i}.txt"' >> skrypt.sh
echo '    echo "Filename: $filename" > $filename' >> skrypt.sh
echo '    echo "Script: skrypt.sh" >> $filename' >> skrypt.sh
echo '    date >> $filename' >> skrypt.sh
echo '  done' >> skrypt.sh
echo 'elif [[ $1 == "--init" ]]; then' >> skrypt.sh
echo '  git clone https://github.com/username/reponame.git' >> skrypt.sh
echo '  export PATH=$PATH:$(pwd)/reponame' >> skrypt.sh
