#!/bin/bash
# Запуск деплоя из CI: SHA коммита передаётся как app_tag и перекрывает group_vars.
set -eu
exec ansible-playbook deploy.yml -i inventory/prod.ini -e "app_tag=$1"
