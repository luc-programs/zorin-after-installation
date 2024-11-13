#!/bin/bash


## Criacao do diretorio ~/Downloads/Softwares/
if [ -d ~/Downloads/Softwares/ ];
then
    echo "O diretorio  ~/Downloads/Softwares/  ja existe"
else
    echo -e "\n\n\n\n Criando diretorio ~/Downloads/Softwares/ "
    mkdir -p ~/Downloads/Softwares/
fi


## Criando diretorio .icons
mkdir -p ~/.icons/

## Criando diretorio .themes
mkdir -p ~/.themes/

## Criando diretorio Temp
mkdir -p ~/Temp/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p ~/Installation/ISO/

## Criando diretorio Script dentro da pasta Installation
mkdir -p ~/Installation/Script/


## Criando diretorio Courses
mkdir -p ~/Courses

## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



## Criando modelo de arquivo shell script
if [ -e ~/Templates/shell-script.sh ];
then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch ~/Templates/shell-script.sh
    echo "#!/bin/bash" > ~/Templates/shell-script.sh
fi




echo -e "\n\n\n********************************************************* INSTALACAO  SDKMAN *********************************************************"

## Instalando SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

## instalando JDK do Java
sdk install java 21.0.5-oracle


## Instalando o Maven
sdk install maven 3.9.8

## Ver versão do Maven
mvn -v

## https://www.baeldung.com/java-sdkman-intro
echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************************* INSTALACAO  PYTHON *********************************************************"

sudo apt update -y

sudo apt install -y software-properties-common build-essential libffi-dev libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev libffi-dev libssl-dev

sudo add-apt-repository ppa:deadsnakes/ppa -y

sudo apt update -y

sudo apt install -y python3.12 python3.12-venv

python3.12 --version

sudo apt install python3.12-distutils -y

wget https://bootstrap.pypa.io/get-pip.py

sudo python3.12 get-pip.py

pip3 --version

sudo apt autoremove -y

python3 --version

tempoParado=5
echo "Parando o Script por $tempoParado segundos para ver a versao do Python";
sleep $tempoParado;
echo "Continuando execucao do Script"


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************** INSTALANDO  RESTRICTED  EXTRAS*********************************************************"

sudo apt install ubuntu-restricted-extras -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* INSTALANDO  COMPACTADORES  E  DESCOMPACTADORES  ************************************************"

## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install sharutils -y
sudo apt install p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update -y
sudo apt install git -y
git --version

tempoParado=5
echo "Parando o Script por $tempoParado segundos para ver a versao do Git";
sleep $tempoParado;
echo "Continuando execucao do Script"

## git config --global credential.helper store

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************************* MISCELANIA ******************************************************************"

## Download Wallpapers
if [ -d ~/wallpaper/ ];
then
    echo "O diretorio  ~/Wallpaper/  ja existe"
else
    echo -e "\n\n\n\n Wallpapers"
    git clone https://github.com/luc-programs/wallpapers.git
    cp -r wallpapers/ ~/
fi



## Download dos scripts de instalacao do Zorin
if [ -d ~/Installation/Script/zorin-after-installation/ ];
then
    echo "O diretorio  ~/Installation/Script/zorin-after-installation/  ja existe"
else
    echo -e "\n\n\n\n Scripts de instalacao do Zorin 17"
    git clone https://github.com/luc-programs/zorin-after-installation.git
    cp -r ~/Downloads/Softwares/zorin-after-installation/ ~/Installation/Script/
fi




## Download tema Kimi Dark
if [ -d ~/.themes/Kimi-dark-v40 ];
then
    echo "O diretorio  ~/.themes/Kimi-dark-v40  ja existe"
else
    echo -e "\n\n\n\n Kimi Dark"
    wget https://github.com/luc-programs/gnome-themes/releases/download/Gnome-Themes/Kimi-dark-v40.tar.gz
    cp Kimi-dark-v40.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Kimi-dark-v40.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download tema Snow Alien
if [ -d ~/.themes/Snow-alien ];
then
    echo "O diretorio  ~/.themes/Snow-alien  ja existe"
else
    echo -e "\n\n\n\n Snow Alien"
    wget https://github.com/luc-programs/gnome-themes/releases/download/Gnome-Themes/Snow-alien.tar.gz
    cp Snow-alien.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Snow-alien.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download tema Evergreen
if [ -d ~/.themes/Evergreen-GTK-AT ];
then
    echo "O diretorio  ~/.themes/Evergreen-GTK-AT  ja existe"
else
    echo -e "\n\n\n\n Evergreen"
    wget https://github.com/luc-programs/gnome-themes/releases/download/Gnome-Themes/Evergreen-GTK-AT.tar.gz
    cp Evergreen-GTK-AT.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Evergreen-GTK-AT.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Deepin Icon
if [ -d ~/.icons/Deepin ];
then
    echo "O diretorio  ~/.icons/Deepin  ja existe"
else
    wget https://github.com/luc-programs/gnome-icons/releases/download/Gnome-Icons/Deepin.tar.gz
    cp Deepin.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Deepin.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Evergreen Forest Dark Icon
if [ -d ~/.icons/Everforest-Dark ];
then
    echo "O diretorio  ~/.icons/Everforest-Dark ja existe"
else
    wget https://github.com/luc-programs/gnome-icons/releases/download/Gnome-Icons/Everforest-Dark.tar.gz
    cp Everforest-Dark.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Everforest-Dark.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download MacMojave cursores
if [ -d ~/.icons/McMojave-cursors ];
then
    echo "O diretorio  ~/.icons/McMojave-cursors  ja existe"
else
    echo -e "\n\n\n\n MacMojave cursores"
    wget https://github.com/luc-programs/gnome-cursors/releases/download/Gnome-Cursors/McMojave-cursors.tar.gz
    cp McMojave-cursors.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf McMojave-cursors.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Docker Compose dos bancos de dados
if [ -d ~/Installation/database-docker-compose/ ];
then
    echo "O diretorio  database-docker-compose  ja existe"
else
    echo -e "\n\n\n\n Docker Compose dos bancos de dados"
    git clone https://github.com/luc-programs/database-docker-compose.git

    cp -r ~/Downloads/Softwares/database-docker-compose/ ~/Installation/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** DOWNLOAD   DE  PROGRAMAS **********************************************************"

## Download 4K Video Downloader
if [ -e 4kvideodownloaderplus_1.8.5-1_amd64.deb ];
then
    echo "O arquivo  4kvideodownloaderplus_1.8.5-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n 4K Video Downloader"
    wget https://github.com/luc-programs/4k-videodownloader/releases/download/4k-videodownloader/4kvideodownloaderplus_1.8.5-1_amd64.deb
fi



## Download Apache Netbeans
if [ -e apache-netbeans_23-1_all.deb ];
then
    echo "O arquivo  apache-netbeans_23-1_all.debb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    wget https://github.com/luc-programs/apache-netbeans/releases/download/Apache-Netbeans/apache-netbeans_23-1_all.deb
fi



## Download Atom
if [ -e atom-amd64.deb ];
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    wget https://github.com/luc-programs/atom/releases/download/Atom/atom-amd64.deb
fi



## Download Balena Etcher
if [ -e balena-etcher_1.19.4_amd64.deb ];
then
    echo "O arquivo  balena-etcher_1.19.4_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    wget https://github.com/luc-programs/balena-etcher/releases/download/Balen-Etcher/balena-etcher_1.19.4_amd64.deb
fi



## Download Balena Etcher Icon
if [ -e Etcher-icon.png];
then
    echo "O arquivo  Etcher-icon.png  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher Icon"
    wget https://github.com/luc-programs/balena-etcher/releases/download/Balen-Etcher/Etcher-icon.png

    sudo mkdir -p /opt/balena-etcher-icon/
    sudo cp Etcher-icon.png /opt/balena-etcher-icon/

fi



## Download Chrome
if [ -e google-chrome-stable_current_amd64.deb ];
then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Chrome"
    wget https://github.com/luc-programs/chrome/releases/download/Chrome/google-chrome-stable_current_amd64.deb
fi



## Download DBeaver
if [ -e dbeaver-le_23.2.0_amd64.deb ];
then
    echo "O arquivo  dbeaver-le_23.2.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n DBeaver"
    wget https://github.com/luc-programs/dbeaver/releases/download/Dbeaver/dbeaver-le_23.2.0_amd64.deb
fi



## Download Evolve
if [ -e evolve-1.5.1.deb ];
then
    echo "O arquivo  evolve-1.5.1.deb  ja existe"
else
    echo -e "\n\n\n\n Evolve"
    wget https://github.com/luc-programs/evolve/releases/download/Evolve/evolve-1.5.1.deb
fi



## Download Iriun Webcam
if [ -e iriunwebcam-2.8.2.deb ];
then
    echo "O arquivo  iriunwebcam-2.8.2.deb  ja existe"
else
    echo -e "\n\n\n\n Iriun Webcam"
    wget https://github.com/luc-programs/iriun-webcam/releases/download/Iriun-Webcam/iriunwebcam-2.8.2.deb
fi



## Download Microsoft Edge
if [ -e microsoft-edge-stable_130.0.2849.46-1_amd64.deb ];
then
    echo "O arquivo  microsoft-edge-stable_130.0.2849.46-1_amd64.deb ja  existe"
else
    echo -e "\n\n\n\n Microsoft Edge"
    wget https://github.com/luc-programs/edge/releases/download/Edge/microsoft-edge-stable_130.0.2849.46-1_amd64.deb
fi



## Download Midori
if [ -e midori_11.3.3_amd64.deb ];
then
    echo "O arquivo  midori_11.3.3_amd64.deb ja  existe"
else
    echo -e "\n\n\n\n Midori"
    wget https://github.com/luc-programs/midori/releases/download/Midori/midori_11.3.3_amd64.deb
fi



## Download MySql Workbench
if [ -e mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb ];
then
    echo "O arquivo   mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n MySql Workbench"
    wget https://github.com/luc-programs/mysql-workbench/releases/download/MySql-Workbench/mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];
then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Only Office"
    wget https://github.com/luc-programs/only-office/releases/download/Only-Office/onlyoffice-desktopeditors_amd64.deb
fi


## Download Pale Moon
if [ -e palemoon_33.1.1-1.gtk3_amd64.deb ];
then
    echo "O arquivo  palemoon_33.1.1-1.gtk3_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Pale Moon"
    ## https://software.opensuse.org/download.html?project=home%3Astevenpusser%3Apalemoon-GTK3&package=palemoon
    wget https://github.com/luc-programs/pale-moon/releases/download/Pale-Moon/palemoon_33.1.1-1.gtk3_amd64.deb
fi



## Download Slack Desktop
if [ -e slack-desktop-4.39.95-amd64.deb ];
then
    echo "O arquivo  slack-desktop-4.39.95-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Slack Desktop"
    wget https://github.com/luc-programs/slack/releases/download/Slack/slack-desktop-4.39.95-amd64.deb
fi



## Download SlimJet browser
if [ -e slimjet_amd64.deb ];
then
    echo "O arquivo  slimjet_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n SlimJet browser"
    wget https://github.com/luc-programs/slimjet/releases/download/Slimjet/slimjet_amd64.deb
fi



## Download StarUML
if [ -e StarUML_6.1.0_amd64.deb ];
then
    echo "O arquivo  StarUML_6.1.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n StarUML"
    wget https://github.com/luc-programs/star-uml/releases/download/Star-Uml/StarUML_6.1.0_amd64.deb
fi



## Download Visual Studio Code
if [ -e code_1.94.2-1728494015_amd64.deb ];
then
    echo "O arquivo  code_1.94.2-1728494015_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Code"
    wget https://github.com/luc-programs/visual-studio-code/releases/download/Visual-Studio-Code/code_1.94.2-1728494015_amd64.deb
fi



## Download Vivaldi
if [ -e vivaldi-stable_6.9.3447.54-1_amd64.deb ];
then
    echo "O arquivo  vivaldi-stable_6.9.3447.54-1_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Vivaldi"
    wget https://github.com/luc-programs/vivaldi/releases/download/Vivaldi/vivaldi-stable_6.9.3447.54-1_amd64.deb
fi



## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle ];
then
    echo "O arquivo  VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle  ja existe"
else
    echo -e "\n\n\n\n VMware Workstation"
    wget https://github.com/luc-programs/wmware/releases/download/Vmware/VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle
fi



## Download Serial VMware Workstation
if [ -e serial-vmware-workstation.txt ];
then
    echo "O arquivo  serial-vmware-workstation.txt  ja existe"
else
    echo -e "\n\n\n\n Serial VMware Workstation"
    wget https://github.com/luc-programs/wmware/releases/download/Vmware/serial-vmware-workstation.txt
fi




echo -e "\n\n\n********************************************* INSTALANDO  O  DOCKER  E  DOCKER  COMPOSE  *********************************************"

# Add Docker's official GPG key:
sudo apt update -y
sudo apt install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# Update list oof repositories
sudo apt update -y


# Install Docker
sudo apt install docker-ce\
                 docker-ce-cli\
                 containerd.io\
                 docker-buildx-plugin\
                 docker-compose-plugin -y


## Adding logged in user to docker group
sudo usermod -aG docker $USER

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y


## Instalando fonte VirtualBox
sudo apt install virtualbox -y

## Instalando fonte Vim editor
sudo apt install vim -y

## Instalando terminal terminator
sudo apt install terminator -y

## Instalando Dconf Editor
sudo apt install dconf-editor -y

## Instalando fonte firecode
sudo apt install fonts-firacode -y

## Instalando Hardinfo
sudo apt install hardinfo -y

## Instalando gcc g++
sudo apt install gcc g++ make -y

## Instalando o Transmission
sudo apt install transmission -y

## Intalando Gnome tweaks tools
sudo apt install gnome-tweaks -y

## Instalando net-tools
sudo apt install net-tools -y

## Instalando libglib2.0-dev
sudo apt install libglib2.0-dev -y

## Instalando libgconf-2-4
sudo apt install libgconf-2-4 -y

## Instalando cmake
sudo apt install cmake -y

## Instalando libfuse2
## Programas do tipo AppImage
## precisao deste pacote
sudo apt install libfuse2 -y

## Instalando VLC
sudo apt install vlc -y

## Instalando Browser Epiphany
sudo apt install epiphany-browser -y

## Instalando Gnome extensions
sudo apt install gnome-shell-extensions -y
sudo apt install chrome-gnome-shell -y

## Instalando o gerenciador de extensões
sudo apt install gnome-shell-extension-manager -y

## Instalando Kolourpaint
sudo apt install kolourpaint -y

## Instalando Gparted
sudo apt install gparted -y

## Instalando Gerenciador de pacote Synaptic
sudo apt install synaptic -y


## Instalando o modulo "libcanberra-gtk-module" para que nao ocorra o erro: “failed to load module canberra-gtk-module”
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module -y


## Instalando Chromium
sudo add-apt-repository ppa:savoury1/chromium -y
sudo apt update -y
sudo apt install chromium-browser -y

## Instalando maquina virtual Gnome Boxes
sudo apt install gnome-boxes -y

## Instalando Navegador Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list
curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_stevenpusser.gpg > /dev/null
sudo apt update -y
sudo apt install brave-browser -y

## Instalando Navegador Waterfox
sudo apt update -y
sudo apt install software-properties-common apt-transport-https curl -y
curl -fsSL https://download.opensuse.org/repositories/home:hawkeye116477:waterfox/xUbuntu_22.04/Release.key | sudo gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_hawkeye116477_waterfox.gpg > /dev/null
echo 'deb http://download.opensuse.org/repositories/home:/hawkeye116477:/waterfox/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:hawkeye116477:waterfox.list
sudo apt update -y
sudo apt install waterfox-g-kpe -y

## Instalando ferramenta de Backup
sudo apt install luckybackup-data -y


######################################################## INSTALACAO  DO  NAVEGADOR LIBRE-WOLF #######################################################

sudo apt update -y
sudo apt install extrepo -y
sudo extrepo enable librewolf
sudo apt --allow-releaseinfo-change update

sudo apt update -y

sudo apt install librewolf -y

########################################################### FIM  DA  NAVEGADOR LIBRE-WOLF ###########################################################




echo -e "\n\n\n*************************************************** INSTALANDO  IDES  DA  JETBRAINS **************************************************"

## https://github.com/JonasGroeger/jetbrains-ppa


## Adicionando a chave do repositorio
curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | gpg --dearmor | sudo tee /usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg > /dev/null

## Adicionando o repositorios
echo "deb [signed-by=/usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg arch=amd64] http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com any main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null

sudo apt update -y



echo -e "\n\n\n################################## INSTALACAO  INTELLIJ  ULTIMATE #################################"

sudo apt install intellij-idea-ultimate -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -ie 's\intellij-idea-ultimate .*%u\/opt/intellij-idea-ultimate/bin/idea\g' /usr/share/applications/intellij-idea-ultimate.desktop

echo -e "\n\n\n############################## FIM  DA INSTALACAO  INTELLIJ  ULTIMATE #############################"



echo -e "\n\n\n######################################## INSTALACAO  CLION ########################################"

sudo apt install clion -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -ie 's\clion .*%u\/opt/clion/bin/clion\g' /usr/share/applications/clion.desktop

echo -e "\n\n\n#################################### FIM  DA  INSTALACAO  CLION ###################################"



echo -e "\n\n\n####################################### INSTALACAO  PYCHARM #######################################"

sudo apt install pycharm-professional -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -ie 's\pycharm-professional .*%u\/opt/pycharm-professional/bin/pycharm\g' /usr/share/applications/pycharm-professional.desktop

echo -e "\n\n\n################################### FIM  DA INSTALACAO  PYCHARM ###################################"



echo -e "\n\n\n################################### INSTALACAO  ANDROID  STUDIO ###################################"

## Adicionando repositorio do Android Studio
sudo add-apt-repository ppa:maarten-fonville/android-studio -y
sudo apt update -y

#Intalando Android Studio
sudo apt install android-studio -y

## Mudando o arquivo executavel que é um shell script para o arquivo binario
sudo sed -i s/studio.sh/studio/g /usr/share/applications/android-studio.desktop

sudo rm -r /opt/android-studio

echo -e "\n\n\n################################ FIM DA INSTALACAO  ANDROID  STUDIO ################################"




echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************** SUBSTITUINDO  FIREFOX  FLATPAK  PELO  NATIVO  *******************************************"

flatpak uninstall org.mozilla.firefox -y

sudo mkdir -p /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc arch=amd64]  https://packages.mozilla.org/apt mozilla main" | sudo tee /etc/apt/sources.list.d/mozilla.list > /dev/null

echo "Package: firefox*"|sudo tee /etc/apt/preferences.d/mozilla
echo "Pin: origin packages.mozilla.org"|sudo tee -a /etc/apt/preferences.d/mozilla
echo "Pin-Priority: 1001"|sudo tee -a /etc/apt/preferences.d/mozilla

sudo apt update -y
sudo apt install firefox -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************************"

## Instalando e configurando Meld
sudo apt install meld -y
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "************************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MYSQL  ****************************************************************"

cd ~/Installation/database-docker-compose/mysql/
sudo docker compose up -d

echo "***********************************************************************************************************************************************"



echo -e "\n\n\n************************************************** INSTALANDO  POSTGRESQL  ***********************************************************"

cd ~/Installation/database-docker-compose/postgres/
sudo docker compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n*************************************** REMOVENDO ARQUIVOS DA PASTA TEMPLATES  *******************************************************"

rm ~/Templates/LibreOffice\ Calc.ods
rm ~/Templates/LibreOffice\ Draw.odg
rm ~/Templates/LibreOffice\ Impress.odp
rm ~/Templates/LibreOffice\ Writer.odt

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
