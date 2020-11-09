#!/bin/bash
set -e

#Color to the people
RED='\x1B[0;31m'
CYAN='\x1B[0;36m'
GREEN='\x1B[0;32m'
NC='\x1B[0m'

#Make script aware of its location
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

source $SCRIPTPATH/config/variables.cfg
source $SCRIPTPATH/config/functions.cfg
source $SCRIPTPATH/config/menu_functions.cfg


if [ $# -eq 0 ]
  then

  show_menu #Show all the menu options

  COLUMNS=12
  PS3="Please select an action:"
  options=("install" "observers" "upgrade" "upgrade_proxy" "upgrade_squad" "remove_db" "start" "stop" "cleanup" "github_pull" "get_logs" "quit")

  select opt in "${options[@]}"
  do

  case $opt in

  'install')
    menu_install
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'observers')
    observers
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'upgrade')
    upgrade
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'upgrade_squad')
    upgrade_squad
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'upgrade_proxy')
    upgrade_proxy
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'remove_db')
    remove_db
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'start')
    start
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'stop')
    stop
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'cleanup')
    cleanup_menu
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'github_pull')
    github_pull
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'get_logs')
    get_logs
    echo -e
    read -n 1 -s -r -p "  Process finished. Press any key to continue..."
    clear
    show_menu
    ;;

  'quit')
    echo -e
    echo -e "${GREEN}---> Exiting scripts menu...${NC}"
    echo -e
    break
    ;;

  esac

  done

else

echo "Arguments supplied"
case "$1" in
'install')
  install
  ;;

'observers')
  observers
  ;;

'upgrade')
  upgrade
  ;;

'upgrade_squad')
  upgrade_squad
  ;;

'upgrade_proxy')
  upgrade_proxy
  ;;

'remove_db')
  remove_db
  ;;

'start')
  start
  ;;

'stop')
  stop
  ;;

'cleanup')
  cleanup_menu
  ;;

'github_pull')
  github_pull
  ;;

'get_logs')
  get_logs
  ;;
esac

fi