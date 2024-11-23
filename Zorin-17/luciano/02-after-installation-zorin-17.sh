#!/bin/bash


## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



echo -e "\n\n\n********************************************** INSTALANDO  VIRTUALBOX  EXTENSION  PACK ***********************************************"

sudo apt install virtualbox-ext-pack -y

echo "***********************************************************************************************************************************************"



echo -e "\n\n\n**************************************************INSTALANDO  VMWARE  PLAYER *********************************************************"

## Dependencias do VMware
sudo apt update -y
sudo apt install build-essential -y
sudo apt install manpages-dev  -y

chmod +x VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle
sudo ./VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle

## Alterando icone  do VMwareskypeforlinux-64.deb
## sudo mkdir /opt/vmware-icon/
## sudo cp vmware.png /opt/vmware-icon/
## sudo sed -i 's\vmware-player\/opt/vmware-icon/vmware.png\g' /usr/share/applications/vmware-player.desktop

## Abrindo o VMware player via terminal
vmware

## Consertando o problema de 3d não suportado
if grep -qi 'mks.gl.allowBlacklistedDrivers = "TRUE"' ~/.vmware/preferences;
then
    echo "VMWare ja configurado"
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> ~/.vmware/preferences
fi

## sudo apt-get install open-vm-tools
echo -e "\n\n\n**************************************************************************************************************************************"



echo -e "\n\n\n ***************************************  INSTALANDO  VISUAL  STUDIO  CODE  E  EXTENCOES  ********************************************"


sudo dpkg -i code_1.94.2-1728494015_amd64.deb
sudo apt --fix-broken install -y


## INSTALANDO  EXTENÇÕES  DO  VISUAL  STUDIO  CODE

## Instalando Material Icon themes
code --install-extension PKief.material-icon-theme


## Instalando ESlint
code --install-extension dbaeumer.vscode-eslint


## Instlando GitLens
code --install-extension eamodio.gitlens

## Instlando Tabnine
code --install-extension TabNine.tabnine-vscode

## Suporte a arquivos yml
code --install-extension redhat.vscode-yaml


## Live Server para mostrar modificacoes na pagina
code --install-extension ritwickdey.LiveServer

## Executar shell Script
#code --install-extension YasharHabibi.run-bash-script

## Instalando Tema Dracula
code --install-extension dracula-theme.theme-dracula

## Instalando o Prettier que serve para formatador de codigo
code --install-extension esbenp.prettier-vscode

code --install-extension Dart-Code.flutter


## INSTALANDO  PARENTESES  AUTOMATICOS  NOS  METODOS  JAVASCRIPT  E  TYPESCRIPT

echo '{' | tee ~/.config/Code/User/settings.json

## parenteses atumomaticos nas funcoes do JavaScript
echo '"javascript.suggest.completeFunctionCalls": true,' | tee -a ~/.config/Code/User/settings.json

## parenteses atumomaticos nos metodos do TypeScript
echo '"typescript.suggest.completeFunctionCalls": true,' | tee -a ~/.config/Code/User/settings.json


echo '}' | tee  -a ~/.config/Code/User/settings.json

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n ***********************************************  INSTALANDO  VISUAL  STUDIO  CODIUM  ************************************************"

## Entrando no diretorio com as extencoes
cd ~/Installation/vscode-vscodium-extensions



sudo dpkg -i codium_1.94.2.24286_amd64.deb
sudo apt --fix-broken install -y

## Abringdo o Codium
codium

tempoParado=10
echo "Parando o Script por $tempoParado abrir o Codium";
sleep $tempoParado;
echo "Continuando execucao do Script"


## Copiando o arquivo de configuracao do VsCode para o VsCodium
cp ~/.config/Code/User/settings.json ~/.config/VSCodium/User/


## Entrando na para pasta de programas
cd ~/Downloads/Softwares/

echo "***********************************************************************************************************************************************"



echo -e "\n\n\n************************************************** INSTALANDO  FLUTTER*****************************************************************"

if [ -e flutter_linux_3.24.3-stable.tar.xz ];
then
    echo "O diretorio  ~/Wallpaper/  ja existe"
else
    echo -e "\n\n\n\n Flutter"
    wget https://github.com/lucgithub343/flutter/releases/download/Flutter/flutter_linux_3.24.3-stable.tar.xz

    sudo tar xf flutter_linux_3.24.3-stable.tar.xz -C /opt/

    sudo apt-get install curl git unzip xz-utils zip libglu1-mesa -y

    sudo apt install clang -y
    sudo apt install ninja-build -y
    sudo apt install libgtk-3-dev -y
    ## flutter doctor --android-licenses
    ## flutter config --jdk-dir /home/luciano/.sdkman/candidates/java/17.0.12-oracle/

    sudo apt-get install lib32stdc++6 libstdc++6 libcurl4-openssl-dev libglu1-mesa -y

    sudo apt-get install \
         libc6:amd64 libstdc++6:amd64 \
         libbz2-1.0:amd64 libncurses5:amd64 -y

    echo "export PATH=\$PATH:/opt/flutter/bin" | sudo tee /etc/profile.d/flutter.sh
fi




echo -e "\n\n\n******************************************************** INSTALANDO  POSTMAN *********************************************************"

curl https://gist.githubusercontent.com/SanderTheDragon/1331397932abaa1d6fbbf63baed5f043/raw/postman-deb.sh | sh

## URL do Script
## https://gist.github.com/SanderTheDragon/1331397932abaa1d6fbbf63baed5f043

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  NODE.JS ***************************************************************"

sudo apt update -y

sudo apt install curl -y


## Download the Node.js setup script:
curl -fsSL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh


## Run the Node.js setup script with sudo
sudo -E bash nodesource_setup.sh


## Install Node.js
sudo apt install nodejs -y

## To see version of Node.js
node -v


## To see version of Node Package Manager (NPM)
npm -v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ANGULAR ***************************************************************"

sudo npm install npm@latest -g

sudo npm i @angular/cli

#### Como ver versao do Angular
ng v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  TYPESCRIPT ************************************************************"

sudo npm install -g typescript

## Como ver versao do Typescript
tsc -v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************************** AMAZON  CKD  CLI **********************************************************"

sudo npm install -g aws-cdk

## Como ver versao do AWS CDK
cdk --version

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************************** AMAZON  AWS  CLI **********************************************************"

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

## Mostrando versao
aws --version

echo "***********************************************************************************************************************************************"





echo -e "\n\n\n********************************************* ADICIONANDO  SUPORTE  EXTENDIDO  AO  ZORIN *********************************************"

## https://ubuntu.com/pro/subscribe

sudo apt update -y
sudo apt install ubuntu-advantage-tools -y
sudo apt update -y

sudo pro attach C1euiqRh17uebyf3GVTv71hYEtN2b
sudo apt update -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *****************************************************"

flatpak install flathub dev.aunetx.deezer -y
flatpak install flathub org.gnome.Solanum -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub com.github.IsmaelMartinez.teams_for_linux -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb


## 4K Video Downloader
sudo dpkg -i 4kvideodownloaderplus_1.8.5-1_amd64.deb
sudo apt --fix-broken install -y


## Atom
sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F --in-process-gpu\g' /usr/share/applications/atom.desktop


## Balena Etcher
sudo dpkg -i balena-etcher_1.19.4_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\Icon=balena-etcher\Icon=/opt/balena-etcher-icon/Etcher-icon.png\g' /usr/share/applications/balena-etcher.desktop


## Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-le_23.2.0_amd64.deb
sudo apt --fix-broken install -y


## Evolve
sudo dpkg -i evolve-1.5.1.deb
sudo apt --fix-broken install -y


## GitKraken
sudo dpkg -i gitkraken-amd64.deb
sudo apt --fix-broken install -y


## Insync
sudo dpkg -i insync_3.9.4.60020-jammy_amd64.deb
sudo apt --fix-broken install -y


## Iriun Webcam
sudo dpkg -i iriunwebcam-2.8.2.deb
sudo apt --fix-broken install -y


## Microsoft Edge
sudo dpkg -i microsoft-edge-stable_130.0.2849.46-1_amd64.deb
sudo apt --fix-broken install -y


## Midori
sudo dpkg -i midori_11.3.3_amd64.deb
sudo apt --fix-broken install -y


## MySql Workbench
sudo dpkg -i mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb
sudo apt --fix-broken install -y


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i '/Terminal=false/a StartupWMClass=DesktopEditors' /usr/share/applications/onlyoffice-desktopeditors.desktop


## Pale Moon
sudo dpkg -i palemoon_33.1.1-1.gtk3_amd64.deb
sudo apt --fix-broken install -y


## Scene Builder
sudo dpkg -i SceneBuilder-23.0.1.deb
sudo apt --fix-broken install -y


## Slack desktop
sudo dpkg -i slack-desktop-4.39.95-amd64.deb
sudo apt --fix-broken install -y


## slimjet_amd64.deb
sudo dpkg -i slimjet_amd64.deb
sudo apt --fix-broken install -y


## Star UML
sudo dpkg -i StarUML_6.1.0_amd64.deb
sudo apt --fix-broken install -y


## Vivaldi
sudo dpkg -i vivaldi-stable_6.9.3447.54-1_amd64.deb
sudo apt --fix-broken install -y




echo -e "\n\n\n ***************************************************  INSTALANDO  APACHE  NETBEANS ***************************************************"

## Apache Netbeans
sudo dpkg -i apache-netbeans_23-1_all.deb
sudo apt --fix-broken install -y


## Baixando repositorio Classes do Git Hub
if [ -d ~/.netbeans/23/config/Templates/Classes/ ];
then
    echo "O diretorio  ~/.netbeans/23/config/Templates/Classes/  ja existe"
else

  ## Criando a pasta onde vao ficar os templates modificados
  mkdir -p ~/.netbeans/23/config/Templates/

  echo -e "\n\n\n\n Clonando repositorio Classes do Git Hub"
  git clone https://github.com/lucgithub343/Classes.git
  cp -r Classes/ ~/.netbeans/23/config/Templates/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n ************************************************  ADICIONANDO  TERMINATOR  AO  MENU  ************************************************"

sudo apt install python3-pip -y
pip install nautilus-open-any-terminal
nautilus -q

glib-compile-schemas ~/.local/share/glib-2.0/schemas/
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal terminator
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal keybindings '<Ctrl><Alt>t'
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal new-tab true
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal flatpak system



echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************* IMPEDIR  AJUSTE  AUTOMATICO  DO SOM ************************************************"


## sudo sed -i 's\volume = merge\volume = 100\g' /usr/share/pulseaudio/alsa-mixer/paths/analog-input-internal-mic.conf


echo "***********************************************************************************************************************************************"


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove -y


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
