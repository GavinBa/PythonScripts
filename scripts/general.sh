#/bin/bash

display_alert()
{
  #TODO setup looging
  #[[ -n $build_dir ]] && echo "Displaying message: $@" >> $build_dir/debug/output.log
  
  local tmp=""
  [[ -n $2 ]] && tmp="[\e[0;33m $2 \x1B[0m]"
  
  case $3 in
    err)
    echo -e "[\e[0;31m] error \x1B[0m] $1 $tmp"
    ;;
    
    wrn)
    echo -e "[\e[0;35m] warn \x1B[0m] $1 $tmp"
    ;;
    
    dbg)
    echo -e "[\e[0,36m] bugs \x1B[0m] $1 $tmp"
    ;;
    
    ext)
    echo -e "[\e[0;32m] o.k. \x1B[0m] $1 $tmp"
    ;;
    
    info)
    echo -e "[\e[0;32m] o.k. \x1B[0m] $1 $tmp"
    ;;
    
    *)
    echo -e "[\e[0;32m] .... \x1B[0m] $1 $tmp"
    ;;
  esac
}