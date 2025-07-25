# 💻 Terminal Automatizado para Configuração e Instalação no Arch Linux

Este script shell atualiza seu sistema Arch Linux, instala o helper `yay` para pacotes da AUR (caso não esteja instalado) e instala automaticamente pacotes listados em arquivos externos, tanto do repositório oficial (`pacman`) quanto da AUR (`yay`).

---

## 📋 Visão Geral

O script executa as seguintes etapas:

- Atualiza o sistema base com `pacman -Syu`
- Verifica se o helper `yay` está instalado; se não, instala automaticamente
- Atualiza pacotes da AUR usando `yay -Syu`
- Instala os pacotes listados em dois arquivos externos:
  - `packages/pacman.txt` para pacotes oficiais
  - `packages/aur.txt` para pacotes da AUR

---

## ⚙️ Funcionalidades

- Execução não interativa com opções `--noconfirm`
- Instalação inteligente do `yay` evitando erros
- Atualização prévia dos repositórios para garantir versões atuais
- Uso de arquivos externos para fácil manutenção e personalização da lista de pacotes
- Mensagens claras de progresso e status

---

## 📋 Pré-requisitos

- Sistema Arch Linux ou derivado
- Usuário com permissões sudo corretamente configuradas
- Conexão ativa com a internet durante a execução do script

---

## 📂 Estrutura dos arquivos de pacotes

- `packages/pacman.txt`: lista de pacotes oficiais, um por linha
- `packages/aur.txt`: lista de pacotes da AUR, um por linha

### Exemplo de conteúdo:

**packages/pacman.txt**

```

base-devel
git
vim
neovim
htop
curl
wget
python
gcc
make
bash-completion
tmux
openssh
rsync
networkmanager
firefox
unzip
zip

```

**packages/aur.txt**

```

visual-studio-code-bin
discord
telegram-desktop
spotify
pamac-aur

````

---

## 🚀 Como usar

1. Faça o clone ou download do script e crie os arquivos `packages/pacman.txt` e `packages/aur.txt` com as listas de pacotes desejadas.

2. Conceda permissão de execução ao script:

```bash
chmod +x seu-script.sh
````

3. Execute o script com privilégios administrativos:

```bash
sudo ./seu-script.sh
```

---

## ⚠️ Avisos importantes

* O script roda de forma totalmente automática e sem confirmação; revise as listas de pacotes para evitar instalações indesejadas.
* Mantenha uma conexão estável com a internet durante todo o processo.
* Indicada para quem deseja automatizar setups iniciais ou replicar ambientes consistentes entre máquinas.

---

## 📝 Licença

Distribuído sob a licença MIT.

---

## 👤 Autor

Cristian
