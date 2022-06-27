ansible localhost -m ping

ansible-playbook webservers.yml 
ansible-playbook webservers.yml 
ansible-playbook webservers.yml -u arous -k
ansible-playbook webservers.yml -u arous -k
ansible-playbook webservers.yml -u arous -k
ansible-playbook webservers.yml -u arous -k
ansible-playbook webservers.yml -u arous -k
ansible-playbook webservers.yml -u arous -k
ansible-playbook webservers.yml -u arous -kK
ansible-playbook webservers.yml -u arous -kK  --tags apache2
ansible-playbook tags.yml -u arous -kK  --tags apache2
ansible-playbook tags.yml -u arous -kK  --tags apache2
ansible-playbook tags.yml --list-tags
ansible-playbook tags.yml -u arous -kK  --tags apache2  --list-tasks
ansible-playbook tags.yml -u arous -kK  --skip-tags ntp_start  --list-tasks
ansible-playbook tags.yml -u arous -kK  --skip-tags ntp_start  -C
ansible-playbook controlnode.yml -u arous -kK 
ansible-playbook controlnode.yml -u arous -kK 
ansible-playbook controlnode.yml -u arous -kK -v
ansible-playbook tags.yml -u arous -kK  --start-at-task 'Install NTP'
ansible-playbook invvars.yml -u arous -kK -e file_state=touch
ansible-playbook invvars.yml -u arous -kK -e file_state=touch
ansible-playbook -i inventory/hosts  tags.yml -u arous -kK  --skip-tags ntp_start  -C
ansible-playbook -i inventory/hosts  use_templates.yml -u arous -kK   -C
ansible-playbook -i inventory/hosts  use_templates.yml -u arous -kK   -C
ansible-playbook -i inventory/hosts  use_templates.yml -u arous -kK   
ansible-playbook -i inventory/hosts  cond.yml  -u arous -kK   
ansible-playbook -i inventory/hosts  cond.yml  -u arous -kK   
ansible-playbook -i inventory/hosts  loop1.yml  -u arous -kK   
ansible-playbook -i inventory/hosts  loop2.yml  -u arous -kK   
ansible-playbook -i inventory/hosts  first_playbook.yml  -u arous -kK   
ansible-playbook -i inventory/hosts  first_playbook.yml  -u arous -kK   
ansible-playbook -i inventory/hosts  first_playbook.yml  -u arous -kK   
ansible-playbook webservers.yml -u arous -k
ansible-playbook webservers.yml -u arous -kK
ansible-playbook webservers.yml -u arous -kK
ansible-playbook tags.yml -u arous -kK --tags apache2
ansible-playbook tags.yml -u arous -kK --tags apache2 --list-tasks
ansible-playbook tags.yml -u arous -kK  --list-tasks
ansible-playbook tags.yml -u arous -kK --skip-tags ntp_start   --list-tasks
ansible-playbook tags.yml -u arous -kK --skip-tags ntp_start   --check
ansible-playbook tags.yml -u arous -kK --skip-tags ntp_start   -C
ansible-playbook tags.yml -u arous -kK    -C
ansible-playbook controlnode.yml -u arous -kK 
ansible-playbook controlnode.yml -u arous -kK  -v
ansible-playbook tags.yml -u arous -kK  --start-at-task 'Install NTP' 
ansible-playbook invvars.yml -u arous -kK -e file_state=touch -C
ansible-playbook invvars.yml -u arous -kK -e file_state=touch 
ansible-playbook invvars.yml -u arous -kK -e file_state=touch 
ansible-playbook invvars.yml -u arous -kK -e file_state=touch 
ansible-playbook webservers.yml -u arous -kK
ansible-playbook webservers.yml -u arous -kK
ansible-playbook webservers.yml -u arous -kK --list-tasks --tags apache2
ansible-playbook tags -u arous -kK --list-tasks --tags apache2
ansible-playbook tags.yml -u arous -kK --list-tasks --tags apache2
ansible-playbook tags.yml -u arous -kK --tags apache2
ansible-playbook tags.yml -u arous -kK --tags apache2 -C
ansible-playbook tags.yml -u arous -kK -C
ansible-playbook tags -u arous -kK  --skip-tags ntp_start  --list-tasks
ansible-playbook tags.yml -u arous -kK  --skip-tags ntp_start  --list-tasks
ansible-playbook tags.yml -u arous -kK  --start-at-task ntp  --list-tasks
ansible-playbook tags.yml -u arous -kK  --start-at-task "Install NTP"  --list-tasks
ansible-playbook tags.yml -u arous -kK  --start-at-task "Install NTP"  -C
ansible-playbook tags.yml -u arous -kK  --start-at-task "Install NTP"  --step
ansible-playbook controlnode.yml -u arous -kK -v
ansible-playbook cond.yml -u arous -kK -v
ansible-playbook webservers.yml 
ansible-playbook webservers.yml -u arous -k
ansible-playbook webservers.yml -u arous -kK
ansible-playbook tags.yml -u arous -kK --tags apache2
ansible-playbook tags.yml -u arous -kK --tags apache2  --list-tasks
ansible-playbook tags.yml -u arous -kK --tags ntp  --list-tasks
ansible-playbook tags.yml -u arous -kK --tags ntp,ntp_start  --list-tasks
ansible-playbook tags.yml -u arous -kK --skip-tags ntp,ntp_start  --list-tasks
ansible-playbook tags.yml -u arous -kK --skip-tags ntp,ntp_start 
ansible-playbook tags.yml -u arous -kK -C
ansible-playbook tags.yml -u arous -kK 
ansible-playbook tags.yml -u arous -kK --start-at-task 'Start NTP'
ansible-playbook tags.yml -u arous -kK --steps
ansible-playbook tags.yml -u arous -kK --step
ansible-playbook invvars.yml -u arous -kK -e file_state=touch -
ansible-playbook invvars.yml -u arous -kK -e file_state=touch -e tmp_file=/tmp/test3
ansible-playbook invvars.yml -u arous -kK -e file_state=touch -e tmp_file=/tmp/test3
ansible-playbook invvars.yml -u arous -kK -e file_state=touch -e tmp_file=/tmp/test3  -v
ansible-playbook invvars.yml -u arous -kK -e file_state=touch -e tmp_file=/tmp/test3  -vv
ansible-playbook controlnode.yml -u arous -kK
ansible-playbook controlnode.yml -u arous -k
ansible-playbook controlnode.yml -u arous -k -v 
ansible-playbook use_templates.yml -u arous -kK
ansible-playbook use_templates.yml -u arous -kK
ansible-playbook -i inventory/hosts  use_templates.yml -u arous -kK
ansible-playbook cond.yml -u arous -kK
ansible-playbook -i inventory/hosts  loop1.yml  -u arous -kK   
ansible-playbook -i inventory/hosts  loop2.yml  -u arous 
ansible-playbook -i inventory/hosts  loop2.yml  -u arous -k
ansible-playbook -i inventory/hosts  loop2.yml  -u arous -k
