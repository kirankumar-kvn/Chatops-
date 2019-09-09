ansible -m ping $1 -i /home/scripts/inventory > /home/slack_op/output
ansible 127.0.0.1 -m shell -a "curl -F file=@/home/slack_op/output -F channels=#chatops -F token=xoxb-723276734437-722837300500-a2gZ1gnJDA5kxENOGZ9n8COm https://slack.com/api/files.upload -s >> /dev/null"
