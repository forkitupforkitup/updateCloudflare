#!/bin/bash
sudo wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-x86_64.rpm;
OLD=$(rpm -qa | grep 'cloudflared')
sudo yum remove $OLD;
sudo rpm -ivh cloudflared-linux-x86_64.rpm;
rm cloudflared-linux-x86_64.rpm;
