#/bin/bash

sudo /bin/bash <<EOF
echo "Copying assets to /etc/bsod-lazy"
mkdir /etc/bsod-lazy
cp ./img/bsod.png /etc/bsod-lazy/.

echo "Copying executable to /use/bin/bsod-lazy"
cp ./bsod-lazy /usr/bin/.

echo "Enable systemd service(user). From now on: Relax!"
cp ./bsod-lazy.service /etc/systemd/user/.
EOF

systemctl --user enable bsod-lazy
systemctl --user start bsod-lazy
