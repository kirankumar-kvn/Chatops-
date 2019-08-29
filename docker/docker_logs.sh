docker logs $1 > /home/slack_op/docker.txt
ansible 127.0.0.1 -m shell -a "curl -F file=@/home/slack_op/docker.txt -F channels=#chatops -F token=xoxb-723276734437-722837300500-a2gZ1gnJDA5kxENOGZ9n8COm https://slack.com/api/files.upload -s >> /dev/null"
