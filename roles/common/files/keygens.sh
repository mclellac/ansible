#!/bin/bash
rm -f /etc/ssh/moduli
ssh-keygen -G "${HOME}/moduli" -b 4096
ssh-keygen -T /etc/ssh/moduli -f "${HOME}/moduli"
rm -f "${HOME}/moduli"
rm -f /etc/ssh/ssh_host_*key*
ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key < /dev/null
ssh-keygen -t rsa -b 4096 -f /etc/ssh/ssh_host_rsa_key < /dev/null
