#/bin/bash

systemctl --user stop bsod-lazy
systemctl --user disable bsod-lazy

echo "Remove all assets again."

sudo /bin/bash <<EOF
rm -R /etc/bsod-lazy
rm /usr/bin/bsod-lazy
rm /etc/systemd/user/bsod-lazy.service

echo "Done."
EOF

