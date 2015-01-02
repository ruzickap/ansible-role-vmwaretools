# Ansible Role: vmwaretools

[![Build Status](https://travis-ci.org/ruzickap/ansible-role-vmwaretools.svg?branch=master)](https://travis-ci.org/ruzickap/ansible-role-vmwaretools) [![Ansible Galaxy](http://img.shields.io/badge/galaxy-peru.vmwaretools-660198.svg)](https://galaxy.ansible.com/list#/roles/2509)


This role will help you with installing original vmware-tools form Vmware or fallback to Open VMware Tools (open-vm-tools).

# Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    #The version of VMware Tools to install. Possible values can be found here: http://packages.vmware.com/tools/esx/index.html

    vmwaretools_tools_version: latest

    #The server which holds the YUM repository. Customize this if you mirror public YUM repos to your internal network.

    vmwaretools_yum_server: http://packages.vmware.com

    #The path on *yum_server* where the repository can be found. Customize this if you mirror public YUM repos to your internal network.
 
    vmwaretools_yum_path: /tools

    #Repository package version. For example: 9.4.10-1 version for http://packages.vmware.com/tools/esx/latest/repos/vmware-tools-repo-RHEL6-9.4.10-1.el6.x86_64.rpm

    vmwaretools_repo_version: 9.4.10-1

## Dependencies

None.

## Example Playbook

    - hosts: servers
      roles:
         - { role: peru.vmwaretools, when: ansible_virtualization_type == 'VMware' }

## License

BSD

## Author Information

This role was created in 2014 by <petr.ruzicka@gmail.com>
