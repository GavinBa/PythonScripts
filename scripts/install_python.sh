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
  apt-get -y install libxml2 libxml2-dev libxslt libxslt-dev
  touch debug.txt
}  

install_modules()
{
  display_alert "Installing modules" "" ""
  #pip install --upgrade pip setuptools wheel
  #pip install --upgrade pip3 setuptools wheel
  
  #pip install --upgrade flask
  #pip3 install --upgrade flask
  
  #pip install --upgrade beautifulsoup4
  #pip3 install --upgrade beautifulsoup4
  
  #pip3 install --upgrade lxml
  
}