install_packages()
{
  display_alert "Updating system and setting up python" "" ""
  apt-get update
  apt-get -y upgrade
  apt-get -y install python python3 curl
  apt-get -y install python-pip python3-pip
  display_alert "Installing required packages" "" ""
  apt-get -y install python-dev python3-dev
  apt-get -y install virtualenv  
  touch debug.txt
}

