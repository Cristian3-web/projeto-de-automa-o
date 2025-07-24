# 🐧 Projeto de Automação — Instalação de Pacotes no Arch Linux

Script simples para automatizar a instalação de pacotes em sistemas baseados no Arch Linux. Ideal para pós-instalação ou criação de ambiente pessoal/de desenvolvimento do zero.

## ⚙️ O que ele faz

- Instala pacotes essenciais via `pacman`
- Instala pacotes da AUR usando `yay`
- Automatiza o processo com zero interação manual
- Facilita a criação de um ambiente consistente

## 📋 Pré-requisitos

Antes de rodar, certifique-se de que:

- Você está num sistema baseado em **Arch Linux**
- Tem **acesso root (sudo)** configurado
- O **`yay`** (AUR helper) já está instalado

Se não tiver o `yay`, instale com:

```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
