#!/bin/bash -eux

HOST="192.168.122.192"

ansible-playbook --become --user root -i ${HOST}, test.yml
ansible-playbook --become --user root -i ${HOST}, test.yml
