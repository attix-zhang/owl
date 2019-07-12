#!/usr/bin/env bash


if ! brew ls --versions ansible &> /dev/null; then
    brew install ansible
fi

ansible-playbook -i hosts standard.yml --ask-become-pass


