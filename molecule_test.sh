#!/bin/bash -eu

#MOLECULE_DISTROS="ubuntu1804 ubuntu1604 ubuntu1404 debian9 debian8 centos7"
MOLECULE_DISTROS="ubuntu1804 centos7"

for MOLECULE_DISTRO in $MOLECULE_DISTROS; do
  echo "*** $MOLECULE_DISTRO"

  export MOLECULE_DISTRO

  if [ "$MOLECULE_DISTRO" = "centos7" ]; then
    MOLECULE_DOCKER_COMMAND="/usr/lib/systemd/systemd"
  fi

  molecule test
done
