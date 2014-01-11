#!/bin/bash

# Startup guake for ppalazon dev station

workspace=/proyectos/workspace/antara

guake --rename-tab="Code" --execute-command="cd $workspace/code" &
sleep 2 &&
guake --new-tab=2 --rename-tab="Production-QA" --execute-command="cd $workspace/production-qa" &
sleep 2 &&
guake --new-tab=3 --rename-tab="Ansible" --execute-command="cd $workspace/code/automation-it/ansible" &
sleep 2 &&
guake --new-tab=4 --rename-tab="Documentation" --execute-command="cd /proyectos/documentation" &
sleep 2 &&
guake --new-tab=4 --rename-tab="Remote Server 1" &
sleep 2 &&
guake --new-tab=4 --rename-tab="Remote Server 2" &
