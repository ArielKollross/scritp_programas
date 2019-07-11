#!/bin/bash
#Script para instalar programas necessários

echo Atualizar sistema

#atualização do sistema
sudo pacman -Syyu

echo instalando AUR- repositório do Arch
#Instalando AUR
sudo pacman -S yaourt

echo Instalar ferramentas báscias, para computação física
#Ferramentas 
sudo pacman -S gnuplot
sudo pacman -S emacs
sudo pacman -S texstudio
sudo pacman -S texlive-bibtexextra

echo Instalando pacotes necessarios para o Rebound
#intalando integrador Rebound e biblotecas básicas
sudo pacman -S glu
sudo pacman -S glfw-wayland
sudo pacman -S rss-glx
sudo pacman -S glee
sudo pacman -S glm
sudo pacman -S lib32-glew
sudo pacman -S glew
glxinfo | grep OpenGL
pip install rebound
git clone http://github.com/hannorein/rebound

echo instalando mais programas uteis
#outros programas uteis
sudo pacman -S dropbox

echo instalando programas do AUR
#instalação dos programas que não estão no repositório oficial

#instalando impressora EPSON L455
echo instalando impressora EPSON
echo drive p/ L455

yaourt -S epson-inkjet-printer-201401w

echo instalando gerenciador de impressoras-manjaro

sudo pacman -Sy manjaro-printer
sudo systemctl enable org.cups.cupsd.service
sudo systemctl start org.cups.cupsd.service
#desabilitar: $ sudo systemctl disable org.cups.cupsd.service