#! /bin/bash

# Deployment script

# if statement

if [ ENVIRONMENT = "QA" ]
		then 
			echo "Deploy into $ENVIRONMENT Environment"
		sshpass -p "$PASSWD" scp /opt/devops.rmp ec2-user@18.224.2.180:/home/ec2-user
elif [ ENVIRONMENT = "PROD" ]
		then 
			echo "Deploy into $ENVIRONMENT Environment"
		sshpass -p "$PASSWD" scp /opt/devops.rmp ec2-user@18.224.2.180:/home/ec2-user
fi
		

# Case statement
		
case $ENVIRONMENT in

	QA) echo Deploy in to $ENVIRONMENT Environment
			sshpass -p "$PASSWD" scp /opt/devops.rmp ec2-user@18.224.2.180:/home/ec2-user
			;;
	PROD) echo Deploy in to $ENVIRONMENT Environment	
			sshpass -p "$PASSWD" scp /opt/devops.rmp ec2-user@18.224.2.180:/home/ec2-user
			;;
esac 