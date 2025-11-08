#!/bin/bash
slowloris() {
    echo "Instalando Slowloris..."
    git clone https://github.com/gkbrk/slowloris.git
    chmod +x slowloris/slowloris.py
    echo "Slowloris instalado!"
}

goldeneye() {
    echo "Instalando GoldenEye..."
    git clone https://github.com/jseidl/GoldenEye.git
    chmod +x GoldenEye/goldeneye.py
    echo "GoldenEye instalado!"
}

hulk() {
    echo "Instalando Hulk..."
    git clone https://github.com/grafov/hulk
    chmod +x hulk/hulk.py
    echo "Hulk instalado!"
}

xerxes() {
    echo "Instalando Xerxes..."
    curl -L https://raw.githubusercontent.com/zan8in/xerxes/master/xerxes.c -o xerxes.c
    gcc xerxes.c -o xerxes
    rm xerxes.c  # Remove o arquivo fonte temporário
    echo "Xerxes compilado!"
}

xspear() {
    echo "Instalando Xspear (requer Ruby e gem)..."
    gem install colourstring
    gem install xspear
    echo "Xspear instalado!"
}
