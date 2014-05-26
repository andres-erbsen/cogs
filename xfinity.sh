#! /bin/bash

systemctl stop netctl-auto@wlp3s0
netctl stop wlp3s0-xfinitywifi
macchanger -A wlp3s0
netctl switch-to wlp3s0-xfinitywifi
