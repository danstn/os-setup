#!/bin/bash
echo "---> [SETUP] Setting up git"

echo "Enter your full name: "
read fullname
echo "Enter your email address: "
read email

### General
git config --global user.name "$fullname"
git config --global user.email $email

### Core editor
git config --global core.editor vim

### Colours
git config --global color.ui true
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto

### Use global gitignore
git config --global core.excludesfile ~/.gitignore

