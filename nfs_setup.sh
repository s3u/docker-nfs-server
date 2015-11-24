#!/bin/bash

set -e
mkdir -p /home/share
echo "/home/share *(rw,sync,no_subtree_check,fsid=0,no_root_squash)" >> /etc/exports
exec runsvdir /etc/sv
