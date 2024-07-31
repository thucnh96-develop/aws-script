aws ec2 describe-instances --region us-east-1 --query "Reservations[].Instances[].InstanceId" --output text > D:\us-east-1-instances.txt
aws ec2 describe-instances --region us-east-2 --query "Reservations[].Instances[].InstanceId" --output text > D:\us-east-2-instances.txt
aws ec2 describe-instances --region us-west-1 --query "Reservations[].Instances[].InstanceId" --output text > D:\us-west-1-instances.txt
aws ec2 describe-instances --region us-west-2 --query "Reservations[].Instances[].InstanceId" --output text > D:\us-west-2-instances.txt
aws ec2 describe-instances --region ap-southeast-1 --query "Reservations[].Instances[].InstanceId" --output text > D:\ap-southeast-1-instances.txt
aws ec2 describe-instances --region eu-central-1 --query "Reservations[].Instances[].InstanceId" --output text > D:\eu-central-1-instances.txt
aws ec2 describe-instances --region eu-central-1 --query "Reservations[].Instances[].InstanceId" --output text > D:\eu-central-1-instances.txt
aws ec2 describe-instances --region eu-north-1 --query "Reservations[].Instances[].InstanceId" --output text > D:\eu-north-1-instances.txt
aws ec2 terminate-instances --region us-east-2 --instance-ids   
aws ec2 create-key-pair --key-name MyKeyPaira --query 'KeyMaterial' --output text > MyKeyPaira.pem --region us-east-1
aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[].VpcId" --output text  --region us-east-1
aws ec2 create-security-group --group-name MySecurityGroup --description "My security group description" --vpc-id vpc-0c6d37439ddbd97a9
aws ec2 describe-subnets --filters "Name=vpc-id,Values=$(aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[0].VpcId" --output text)" --query "Subnets[0].SubnetId" --output text --region us-east-1
lấy subnet đầu tiên của default VPC:
aws ec2 describe-subnets --filters "Name=vpc-id,Values=$(aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[0].VpcId" --output text)" --query "Subnets[0].SubnetId" --output text --region us-east-1
aws ec2 describe-instances --filters "Name=tag:Name,Values=Ubuntu Server 20.04 LTS (HVM), SSD Volume Type" --query "Reservations[].Instances[].InstanceId" --output text
