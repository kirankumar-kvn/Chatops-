aws ec2 stop-instances --instance-ids $1 --output=table > /home/slack_op/aws.txt
ansible 127.0.0.1 -m shell -a "curl -F file=@/home/slack_op/aws.txt -F channels=#chatops -F token=xoxb-723276734437-722837300500-a2gZ1gnJDA5kxENOGZ9n8COm https://slack.com/api/files.upload -s >> /dev/null"

