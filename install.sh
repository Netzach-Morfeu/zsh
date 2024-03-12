#!/bin/bash
pkg install zsh -y

pkg install curl -y 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

pkg install git -y

git clone https://github.com/Netzach-Morfeu/zsh

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

mkdir zshrc-alto

mv .zshrc zshrc-alto
cd zsh
mv .zshrc1 .zshrc
mv .zshrc $HOME
clear 
echo ""
echo ""

echo "AGORA SAIA DO TERMUX E ENTRE NOVAMENTE"
exit
