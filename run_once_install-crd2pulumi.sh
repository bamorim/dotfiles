#!/usr/bin/env sh

cd $(mktemp)
curl -SL https://github.com/pulumi/crd2pulumi/releases/download/v1.0.5/crd2pulumi-v1.0.5-linux-amd64.tar.gz -o crd2pulumi.tar.gz
tar -xzvf crd2pulumi.tar.gz
chmod +x crd2pulumi
mv crd2pulumi $HOME/bin/crd2pulumi