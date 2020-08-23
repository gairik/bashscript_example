#!/bin/bash


readarray FILES <<< "$(aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId]' --filters Name=instance-state-name,Values=running --output text)"

for inst in ${FILES[@]} 
do
    echo $inst
    aws ec2 terminate-instances --instance-ids $inst
done
