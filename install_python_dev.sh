#!/bin/bash

src_dir="$(pwd)"
build_dir="${src_dir}/../PythonScript_tmp"

source ${src_dir}/scripts/general.sh
source ${src_dir}/scripts/install_python.sh

#check for sudo
if [[ $EUID != 0 ]]; then
  display_alert "This script requires root privileges, trying to use sudo" "" "wrn"
  sudo "${src_dir}/install_python_dev.sh" "$@"
  exit $?
fi

if [ ! -d "${build_dir}" ]; then
  mkdir ${build_dir}
fi
cd ${build_dir}

install_packages
install_modules

cd ${src_dir}