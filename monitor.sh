ansible -i /home/scripts/inventory Test -m shell -a "/bin/bash /home/ec2-user/git/monitor-script > /home/ec2-user/health_check.txt"
ansible Test -i /home/scripts/inventory -m shell -a "curl -F file=@/home/ec2-user/health_check.txt -F channels=#chatops -F token=xoxb-723276734437-722837300500-a2gZ1gnJDA5kxENOGZ9n8COm https://slack.com/api/files.upload -s >> /dev/null" 
