#!/bin/bash
# Autor: Cristian
# Projeto: Automação de instalação de pacotes no terminal do Arch Linux
# Descrição: Instala pacotes do pacman e do AUR automaticamente
#use chmod +x setup.sh, depois sudo ./setup.sh

set -euxo pipefail

echo "Atualizando sistema base"
pacman -Syu --noconfirm

# Instalar yay se não existir
if ! command -v yay &> /dev/null; then
    echo "yay não encontrado. Instalando yay"
    sudo pacman -S --noconfirm base-devel git
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si --noconfirm
    cd -
else
    echo "yay já está instalado"
fi

echo "Atualizando pacotes AUR"
yay -Syu --noconfirm

echo "Instalar pacotes listados nos arquivos"
xargs -a packages/pacman.txt sudo pacman -S --noconfirm
xargs -a packages/aur.txt yay -S --noconfirm

echo "Limpando arquivos temporários"
rm -rf yay/ *.log *.tmp
