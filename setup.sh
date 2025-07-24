#!/bin/bash
# Autor: Cristian
# Projeto: Automação de instalação de pacotes no Arch Linux
# Descrição: Instala pacotes do pacman e do AUR automaticamente

set -euxo pipefail

# Atualizando sistema base
sudo pacman -Syu --noconfirm

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

# Atualizando pacotes AUR
yay -Syu --noconfirm

# Instalar pacotes listados nos arquivos
xargs -a packages/pacman.txt sudo pacman -S --noconfirm
xargs -a packages/aur.txt yay -S --noconfirm
