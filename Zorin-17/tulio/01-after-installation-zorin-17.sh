#!/bin/bash



## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir -p ~/Downloads/Softwares/

## Criando diretorio .icons
mkdir -p ~/.icons/

## Criando diretorio .themes
mkdir -p ~/.themes/

## Criando diretorio Temp
mkdir -p ~/Temp/

## Criando diretorio do OBS Studio
mkdir -p ~/Videos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p ~/Installation/ISO/

## Criando diretorio Script dentro da pasta Installation
mkdir -p ~/Installation/Script/


## Criando diretorio de projetos do Java
mkdir -p ~/Projects/Java


## Criando diretorio de projetos do Angular
mkdir -p ~/Projects/Angular


## Criando diretorio Script de Projetos do React
mkdir -p ~/Projects/React


## Criando diretorio dos Servers
mkdir -p ~/Servers


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



## Criando modelo de arquivo Dockerfile
if [ -e ~/Templates/Dockerfile ];
then
    echo "O arquivo  Dockerfile  ja existe"
else
    touch ~/Templates/Dockerfile
fi



## Criando modelo de arquivo docker-compose.yml
if [ -e ~/Templates/docker-compose.yml ];
then
    echo "O arquivo  docker-compose.yml  ja existe"
else
    touch ~/Templates/docker-compose.yml
fi




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

## Instalando o Git
sudo apt update -y
sudo apt install git -y
## git config --global credential.helper store

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************************* MISCELANIA ******************************************************************"

## Download Compactador
if [ -e compactar-tar-gz ];
then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Compactador-tar-gz"
    wget https://github.com/lucgithub343/compactador-descompactador/releases/download/compactador-descompactador/compactar-tar-gz

    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi



## Download Descompactar
if [ -e descompactar-tar-gz ];
then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Descompactar-tar-gz"
    wget https://github.com/lucgithub343/compactador-descompactador/releases/download/compactador-descompactador/descompactar-tar-gz

    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi



## Download Wallpapers
if [ -d ~/Wallpaper/ ];
then
    echo "O diretorio  ~/Wallpaper/  ja existe"
else
    echo -e "\n\n\n\n Wallpapers"
    git clone https://github.com/lucgithub343/Wallpapers.git
    cp -r Wallpapers/ ~/
fi



## Download dos scripts de instalacao do Zorin
if [ -d ~/Installation/Script/zorin-after-installation/ ];
then
    echo "O diretorio  ~/Installation/Script/zorin-after-installation/  ja existe"
else
    echo -e "\n\n\n\n Scripts de instalacao do Zorin 17"
    git clone https://github.com/lucgithub343/zorin-after-installation.git
    cp -r ~/Downloads/Softwares/zorin-after-installation/ ~/Installation/Script/
fi



## Download tema WhiteSur Dark solid
if [ -d ~/.themes/WhiteSur-dark-solid ];
then
    echo "O diretorio  ~/.themes/WhiteSur-dark-solid  ja existe"
else
    echo -e "\n\n\n\n WhiteSur Dark solid"
    wget https://github.com/lucgithub343/gnome-themes/releases/download/gnome-themes/WhiteSur-dark-solid.tar.gz
    cp WhiteSur-dark-solid.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf WhiteSur-dark-solid.tar.gz
    rm WhiteSur-dark-solid.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi


## Download tema Dracula
if [ -d ~/.themes/Dracula ];
then
    echo "O diretorio  ~/.themes/Dracula  ja existe"
else
    echo -e "\n\n\n\n Dracula"
    wget https://github.com/lucgithub343/gnome-themes/releases/download/gnome-themes/Dracula.tar.gz
    cp Dracula.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Dracula.tar.gz
    rm Dracula.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download tema Kimi Dark
if [ -d ~/.themes/Kimi-dark-v40 ];
then
    echo "O diretorio  ~/.themes/Kimi-dark-v40  ja existe"
else
    echo -e "\n\n\n\n Kimi Dark"
    wget https://github.com/lucgithub343/gnome-themes/releases/download/gnome-themes/Kimi-dark-v40.tar.gz
    cp Kimi-dark-v40.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Kimi-dark-v40.tar.gz
    rm Kimi-dark-v40.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download tema Snow Alien
if [ -d ~/.themes/Snow-alien ];
then
    echo "O diretorio  ~/.themes/Snow-alien  ja existe"
else
    echo -e "\n\n\n\n Snow Alien"
    wget https://github.com/lucgithub343/gnome-themes/releases/download/gnome-themes/Snow-alien.tar.gz
    cp Snow-alien.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Snow-alien.tar.gz
    rm Snow-alien.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download tema Evergreen
if [ -d ~/.themes/Evergreen-GTK-AT ];
then
    echo "O diretorio  ~/.themes/Evergreen-GTK-AT  ja existe"
else
    echo -e "\n\n\n\n Evergreen"
    wget https://github.com/lucgithub343/gnome-themes/releases/download/gnome-themes/Evergreen-GTK-AT.tar.gz
    cp Evergreen-GTK-AT.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf Evergreen-GTK-AT.tar.gz
    rm Evergreen-GTK-AT.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Deepin Icon
if [ -d ~/.icons/Deepin ];
then
    echo "O diretorio  ~/.icons/Deepin  ja existe"
else
    wget https://github.com/lucgithub343/gnome-icons/releases/download/gnome-icons/Deepin.tar.gz
    cp Deepin.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Deepin.tar.gz
    rm Deepin.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi

## Download Deepin Icon
if [ -d ~/.icons/Deepin ];
then
    echo "O diretorio  ~/.icons/Deepin  ja existe"
else
    wget https://github.com/lucgithub343/gnome-icons/releases/download/gnome-icons/Deepin.tar.gz
    cp Deepin.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Deepin.tar.gz
    rm Deepin.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download BigSur Icon
if [ -d ~/.icons/BigSur ];
then
    echo "O diretorio  ~/.icons/BigSur ja existe"
else
    wget https://github.com/lucgithub343/gnome-icons/releases/download/gnome-icons/BigSur.tar.gz
    cp BigSur.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf BigSur.tar.gz
    rm BigSur.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Evergreen Forest Dark Icon
if [ -d ~/.icons/Everforest-Dark ];
then
    echo "O diretorio  ~/.icons/Everforest-Dark ja existe"
else
    wget https://github.com/lucgithub343/gnome-icons/releases/download/gnome-icons/Everforest-Dark.tar.gz
    cp Everforest-Dark.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Everforest-Dark.tar.gz
    rm Everforest-Dark.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download MacMojave cursores
if [ -d ~/.icons/McMojave-cursors ];
then
    echo "O diretorio  ~/.icons/McMojave-cursors  ja existe"
else
    echo -e "\n\n\n\n MacMojave cursores"
    wget https://github.com/lucgithub343/gnome-cursors/releases/download/gnome-cursosrs/McMojave-cursors.tar.gz
    cp McMojave-cursors.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf McMojave-cursors.tar.gz
    rm McMojave-cursors.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Docker Compose dos bancos de dados
if [ -d ~/Installation/database-docker-compose/ ];
then
    echo "O diretorio  database-docker-compose  ja existe"
else
    echo -e "\n\n\n\n Docker Compose dos bancos de dados"
    git clone https://github.com/lucgithub343/database-docker-compose.git

    cp -r ~/Downloads/Softwares/database-docker-compose/ ~/Installation/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** DOWNLOAD   DE  PROGRAMAS **********************************************************"

## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ];
then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n 4K Video Downloader"
    wget https://github.com/lucgithub343/4k-video-downloader/releases/download/4k-video-downloader/4kvideodownloader_4.21.7-1_amd64.deb
fi



## Download Apache Netbeans
if [ -e apache-netbeans_22-1_all.deb ];
then
    echo "O arquivo  apache-netbeans_22-1_all.deb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    wget https://github.com/lucgithub343/apache-netbeans/releases/download/apache-netbeans/apache-netbeans_22-1_all.deb
fi



## Download Atom
if [ -e atom-amd64.deb ];
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    wget https://github.com/lucgithub343/atom/releases/download/atom/atom-amd64.deb
fi



## Download Balena Etcher
if [ -e balena-etcher_1.19.4_amd64.deb ];
then
    echo "O arquivo  balena-etcher_1.19.4_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    wget https://github.com/lucgithub343/balena-etcher/releases/download/balena-etcher/balena-etcher_1.19.4_amd64.deb
fi


## Download Balena Etcher Icon
if [ -e Etcher-icon.png];
then
    echo "O arquivo  Etcher-icon.png  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher Icon"
    wget https://github.com/lucgithub343/balena-etcher/releases/download/balena-etcher/Etcher-icon.png

    sudo mkdir -p /opt/balena-etcher-icon/
    sudo cp Etcher-icon.png /opt/balena-etcher-icon/

fi



## Download Chrome
if [ -e google-chrome-stable_current_amd64.deb ];
then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Chrome"
    wget https://github.com/lucgithub343/chrome/releases/download/chrome/google-chrome-stable_current_amd64.deb
fi



## Download DBeaver
if [ -e dbeaver-le_23.2.0_amd64.deb ];
then
    echo "O arquivo  dbeaver-le_23.2.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n DBeaver"
    wget https://github.com/lucgithub343/dbeaver/releases/download/dbeaver/dbeaver-le_23.2.0_amd64.deb
fi



## Download Evolve
if [ -e evolve-1.5.1.deb ];
then
    echo "O arquivo  evolve-1.5.1.deb  ja existe"
else
    echo -e "\n\n\n\n Evolve"
    wget https://github.com/lucgithub343/evolve/releases/download/Evolve/evolve-1.5.1.deb
fi



## Download GitKraken
if [ -e gitkraken-amd64.deb ];
then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n GitKraken"
    wget https://github.com/lucgithub343/git-kraken/releases/download/git-kraken/gitkraken-amd64.deb
fi



## Download Insomnia
if [ -e Insomnia.Core-8.6.0.deb ];
then
    echo "O arquivo  Insomnia.Core-8.6.0.deb  ja existe"
else
    echo -e "\n\n\n\n Insomnia"
    wget https://github.com/lucgithub343/insomnia/releases/download/insomnia/Insomnia.Core-8.6.0.deb
fi


## Download Iriun Webcam
if [ -e iriunwebcam-2.8.2.deb ];
then
    echo "O arquivo  iriunwebcam-2.8.2.deb  ja existe"
else
    echo -e "\n\n\n\n Iriun Webcam"
    wget https://github.com/lucgithub343/iriun-webcam/releases/download/iriun-webcam/iriunwebcam-2.8.2.deb
fi



## Download Insync
if [ -e insync_3.8.7.50516-jammy_amd64.deb ];
then
    echo "O arquivo  insync_3.8.7.50516-jammy_amd64.deb ja existe"
else
    echo -e "\n\n\n\n Insync"
    wget https://github.com/lucgithub343/insync/releases/download/insync/insync_3.8.7.50516-jammy_amd64.deb
fi



## Download Jasper Studio
if [ -e jaspersoft-sudio-6.20.0_linux_amd64.deb ];
then
    echo "O arquivo  jaspersoft-sudio-6.20.0_linux_amd64.deb ja existe"
else
    echo -e "\n\n\n\n Jasper Studio"
    wget https://github.com/lucgithub343/jaspersoft-studio/releases/download/jaspersoft-studio/jaspersoft-sudio-6.20.0_linux_amd64.deb
fi



## Download Lombok
if [ -e lombok-1.18.32.jar ];
then
    echo "O arquivo lombok-1.18.32.jar ja existe"
else
    echo -e "\n\n\n\n Lombok"
    wget https://github.com/lucgithub343/lombok/releases/download/lombok/lombok-1.18.32.jar
fi



## Download Master PDF
if [ -e master-pdf-editor-5.9.82.deb ];
then
    echo "O arquivo  master-pdf-editor-5.9.82.deb ja  existe"
else
    echo -e "\n\n\n\n Master PDF"
    wget https://github.com/lucgithub343/master-pdf/releases/download/master-pdf/master-pdf-editor-5.9.82.deb
fi



## Download Microsoft Edge
if [ -e microsoft-edge-stable_121.0.2277.98-1_amd64.deb ];
then
    echo "O arquivo  microsoft-edge-stable_121.0.2277.98-1_amd64.deb ja  existe"
else
    echo -e "\n\n\n\n Microsoft Edge"
    wget https://github.com/lucgithub343/microsoft-edge/releases/download/microsoft-edge/microsoft-edge-stable_121.0.2277.98-1_amd64.deb
fi



## Download Midori
if [ -e midori_11.3.3_amd64.deb ];
then
    echo "O arquivo  midori_11.3.3_amd64.deb ja  existe"
else
    echo -e "\n\n\n\n Midori"
    wget https://github.com/lucgithub343/midori/releases/download/midori/midori_11.3.3_amd64.deb
fi



## Download MySql Workbench
if [ -e mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb ];
then
    echo "O arquivo   mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n MySql Workbench"
    wget https://github.com/lucgithub343/mysql-workbench/releases/download/mysql-workbench/mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];
then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Only Office"
    wget https://github.com/lucgithub343/onlyoffice/releases/download/onlyoffice/onlyoffice-desktopeditors_amd64.deb
fi



## Download Postman
if [ -e postman-10.22.10.deb ];
then
    echo "O arquivo  postman-10.22.10.deb  ja existe"
else
    echo -e "\n\n\n\n Postman"
    wget https://github.com/lucgithub343/postman/releases/download/postman/postman-10.22.10.deb
fi



## Download Scene Builder
if [ -e SceneBuilder-21.0.0.deb ];
then
    echo "O arquivo  SceneBuilder-21.0.0.deb  ja existe"
else
    echo -e "\n\n\n\n Scene Builder"
    wget https://github.com/lucgithub343/scene-builder/releases/download/Scene-Builder/SceneBuilder-21.0.0.deb
fi



## Download SlimJet browser
if [ -e slimjet_amd64.deb ];
then
    echo "O arquivo  slimjet_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n SlimJet browser"
    wget https://github.com/lucgithub343/slimjet-browser/releases/download/slimjet-browser/slimjet_amd64.deb
fi


## Download Spring Tool Suite
if [ -e spring-tool-suite-4.22.0.RELEASE.deb ];
then
    echo "O arquivo  spring-tool-suite-4.22.0.RELEASE.deb  ja existe"
else
    echo -e "\n\n\n\n Spring Tool Suite"
    wget https://github.com/lucgithub343/spring-tool-suite/releases/download/spring-tool-suite/spring-tool-suite-4.22.0.RELEASE.deb
fi



## Download StarUML
if [ -e StarUML_6.1.0_amd64.deb ];
then
    echo "O arquivo  StarUML_6.1.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n StarUML"
    wget https://github.com/lucgithub343/starUML/releases/download/starUML/StarUML_6.1.0_amd64.deb
fi



## Download Tomcat
if [ -d ~/Servers/tomcat-10.1.18 ];
then
    echo "O diretorio  ~/Servers/tomcat-10.1.18 ja existe"
else
    wget https://github.com/lucgithub343/tomcat/releases/download/Tomcat/tomcat-10.1.18.tar.gz
    cp tomcat-10.1.18.tar.gz ~/Servers/
    cd ~/Servers/
    tar -xvzf tomcat-10.1.18.tar.gz
    rm tomcat-10.1.18.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Visual Studio Code
if [ -e visual-studio-code_1.87.2-1709912201_amd64.deb ];
then
    echo "O arquivo  visual-studio-code_1.87.2-1709912201_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Code"
    wget https://github.com/lucgithub343/visual-studio-code/releases/download/visual-studio-code/visual-studio-code_1.87.2-1709912201_amd64.deb
fi


## Download Visual Studio Codium
if [ -e vs-codium_1.90.2.24171_amd64.deb ];
then
    echo "O arquivo  vs-codium_1.90.2.24171_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Codium"
    wget https://github.com/lucgithub343/visual-studio-codium/releases/download/visual-studio-codium/vs-codium_1.90.2.24171_amd64.deb
fi



## Download Vivaldi
if [ -e vivaldi-stable_6.8.3381.44-1_amd64.deb ];
then
    echo "O arquivo  vivaldi-stable_6.8.3381.44-1_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Vivaldi"
    wget https://github.com/lucgithub343/vivaldi/releases/download/Vivaldi/vivaldi-stable_6.8.3381.44-1_amd64.deb
fi



## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle ];
then
    echo "O arquivo  VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle  ja existe"
else
    echo -e "\n\n\n\n VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle
fi



## Download Serial VMware Workstation
if [ -e serial-vmware-workstation.txt ];
then
    echo "O arquivo  serial-vmware-workstation.txt  ja existe"
else
    echo -e "\n\n\n\n Serial VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/serial-vmware-workstation.txt
fi



## Download Waterfox
if [ -e waterfox-G6.0.8.deb ];
then
    echo "O arquivo  waterfox-G6.0.8.deb   ja existe"
else
    echo -e "\n\n\n\n Waterfox"
    wget https://github.com/lucgithub343/waterfox/releases/download/waterfox/waterfox-G6.0.8.deb
fi



## Download Wildfly
if [ -d ~/Servers/wildfly-31.0.0.Final ];
then
    echo "O diretorio  ~/Servers/wildfly-31.0.0.Final ja existe"
else
    wget https://github.com/lucgithub343/wildfly/releases/download/Wildfly/wildfly-31.0.0.Final.tar.gz
    cp wildfly-31.0.0.Final.tar.gz ~/Servers/
    cd ~/Servers/
    tar -xvzf wildfly-31.0.0.Final.tar.gz
    rm wildfly-31.0.0.Final.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi


## Download Zoom
if [ -e zoom_amd64.deb ];
then
    echo "O arquivo  zoom_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Zoom"
    wget https://github.com/lucgithub343/zoom/releases/download/Zoom/zoom_amd64.deb
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




echo -e "\n\n\n********************************************************* INSTALACAO  SDKMAN *********************************************************"


## Instalando SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

## Instalando Java
sdk install java 21.0.4-oracle

## Listar todas as versoes do JAVA
## sdk list java

## Instalando Groovy
sdk install groovy

## Ver versão do groovy
groovy -version

## Instalando Kotlin ultima versao
sdk install kotlin

## Ver versão do Kotlin instalado
kotlinc -version

## Instalando o Maven
sdk install maven 3.9.8

## Ver versão do Maven
mvn -v

## https://www.baeldung.com/java-sdkman-intro

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************************* INSTALACAO  PHP ************************************************************"

sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt install php8.2 -y
php --version

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

echo -e "\n************ VERSAO  DO  PYTHON ************"
python3 --version

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n********************************************************* INSTALACAO  GOLANG *********************************************************"

## Endereco de Donwload das versoes
## https://go.dev/dl/

cd ~/Downloads/Softwares/


## Removendo diretorio go/
if [ -e ~/Downloads/Softwares/go ];
    then
        echo "O diretorio  go/  ja existe. Removendo diretorio go/"
        rm -r go/
fi


## Download Golang
if [ -e ~/Downloads/Softwares/go1.22.5.linux-amd64.tar.gz ];
    then
        echo "O arquivo  go1.22.5.linux-amd64.tar.gz  ja existe."
    else
        wget https://github.com/lucgithub343/golang/releases/download/Golang/go1.22.5.linux-amd64.tar.gz
fi

tar -xvzf go1.22.5.linux-amd64.tar.gz

sudo cp -r go/ /usr/local/


if grep -qi 'export PATH=$PATH:/usr/local/go/bin' ~/.profile;
    then
        echo "Golang ja configurado"
    else
        echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
fi

echo "***********************************************************************************************************************************************"



echo -e "\n\n\n********************************************************* INSTALACAO  PARCIAL  DO  RUBY **********************************************"


sudo apt update -y

sudo apt install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev -y


curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo "***********************************************************************************************************************************************"





echo -e "\n\n\n************************************* CONFIGURAR  CELULAR  PARA  DESENVOLVIMENTO  ANDROID ********************************************"

sudo usermod -aG plugdev $LOGNAME
sudo apt install android-sdk-platform-tools-common -y
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ADB *******************************************************************"

## Instalando ADB
sudo apt update -y
sudo apt install adb -y
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
sudo apt install qemu-kvm -y
sudo adduser $USER kvm

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando GNOME Text Editor
sudo apt install gnome-text-editor -y

## Instalando fonte VirtualBox
sudo apt install virtualbox -y

## Instalando fonte Notepadqq
sudo apt install notepadqq -y

## Instalando fonte Vim editor
sudo apt install vim -y

## Instalando terminal terminator
sudo apt install terminator -y

## Instalando terminal leitor de PDF Okular
sudo apt install okular -y

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

## Instalando Umbrelo
sudo apt install umbrello -y

## Instalando o modulo "libcanberra-gtk-module" para que nao ocorra o erro: “failed to load module canberra-gtk-module”
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module -y

## Instalando Chromium
sudo add-apt-repository ppa:savoury1/chromium -y
sudo apt update -y
sudo apt install chromium-browser -y

## Instalando Navegador Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list
curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_stevenpusser.gpg > /dev/null
sudo apt update -y
sudo apt install brave-browser -y

## Instalando ferramenta de Backup
sudo apt install luckybackup-data -y


######################################################## INSTALACAO  DO  NAVEGADOR LIBRE-WOLF #######################################################

sudo apt update && sudo apt install -y wget gnupg lsb-release apt-transport-https ca-certificates

distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)

wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

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

## Instalando Intellij ultimate
sudo apt install intellij-idea-ultimate -y

## Instalando PyCharm Professional
sudo apt install pycharm-professional -y

## Instalando PHP Storm
sudo apt install phpstorm -y

## Instalando o WebStorm
sudo apt install webstorm -y

## RustRover
sudo apt install rustrover-eap -y

## Instalndo RubyMine
sudo apt install rubymine -y

## Instalndo CLion
sudo apt install clion -y

## Instalndo GoLand
sudo apt install goland -y

## Instalando Android Studio
sudo apt update -y
sudo add-apt-repository ppa:maarten-fonville/android-studio -y
sudo apt update -y
sudo apt install android-studio -y


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



echo -e "\n\n\n*************************************************** INSTALANDO  OBS  STUDIO  NATIVO **************************************************"

flatpak uninstall com.obsproject.Studio  -y

sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update -y
sudo apt install obs-studio -y


echo "***********************************************************************************************************************************************"



echo -e "\n\n\n*************************************************** INSTALANDO  HANDBRAKE  NATIVO ****************************************************"

flatpak uninstall fr.handbrake.ghb -y

sudo apt install handbrake -y

echo "***********************************************************************************************************************************************"



echo -e "\n\n\n**************************************************** INSTALANDO  KDENLIVE  NATIVO ****************************************************"

flatpak uninstall org.kde.kdenlive -y

sudo apt install kdenlive -y


echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  KVM ******************************************************************"

sudo apt update -y

value=$(egrep -c '(vmx|svm)' /proc/cpuinfo)

if [ $value -ne 0 ];
then
    echo "Instalando  KVM"
    sudo apt install cpu-checker -y
    kvm-ok
    sudo apt install qemu-kvm virt-manager libvirt-daemon-system virtinst libvirt-clients bridge-utils -y
    sudo systemctl enable --now libvirtd
    sudo systemctl start libvirtd
    ## sudo systemctl status libvirtd
    sudo usermod -aG kvm $USER
    sudo usermod -aG libvirt $USER
    sudo virt-manager
else
    echo "Não pode instalar kvm"

fi

echo "************************************************************************************************************************************************"




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




echo -e "\n\n\n************************************************** INSTALANDO  MARIADB  **************************************************************"

cd ~/Installation/database-docker-compose/MariaDB/
sudo docker compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRESQL  ***********************************************************"

cd ~/Installation/database-docker-compose/postgres/
sudo docker compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n***************************************************** INSTALANDO  MONGO  *************************************************************"

cd ~/Installation/database-docker-compose/Mongo
sudo docker compose up -d

echo "***********************************************************************************************************************************************"



echo -e "\n\n\n*************************************** REMOVENDO ARQUIVOS DA PASTA TEMPLATES  *******************************************************"

rm ~/Templates/LibreOffice\ Calc.ods
rm ~/Templates/LibreOffice\ Draw.odg
rm ~/Templates/LibreOffice\ Impress.odp
rm ~/Templates/LibreOffice\ Writer.odt

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
