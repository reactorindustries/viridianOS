removepackages=$(curl https://raw.githubusercontent.com/reactorindustries/viridianOS/main/removepackages.txt)

addpackages=$(curl https://raw.githubusercontent.com/reactorindustries/viridianOS/main/addpackages.txt)

apt purge $removepackages

apt install $addpackages

mkdir /usr/share/wallpapers

mkdir /usr/share/wallpapers/viridianOS

cd /usr/share/wallpapers/viridianOS

wget https://raw.githubusercontent.com/reactorindustries/viridianOS/main/images/viridianOS_wallpaper.png

mkdir /usr/share/icons/viridianOS

cd /usr/share/icons/viridianOS

wget https://raw.githubusercontent.com/reactorindustries/viridianOS/main/images/viridianOS_icon.png

mkdir /etc/skel/.config

cd /etc/skel/.config

wget https://github.com/reactorindustries/viridianOS/raw/main/config/viridian-config.zip

unzip ./viridian-config.zip

rm ./viridian-config.zip
