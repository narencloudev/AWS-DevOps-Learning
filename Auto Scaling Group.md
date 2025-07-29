# 🚀 AWS High Availability Web App Deployment Guide


Step 1  
Launch ec2  

Step 2 Application Host  
sudo apt update  
install web server > sudo apt install nginx -y  
go to default path > cd /var/www/html/  
pull code > git clone https://github.com/JaysonMnguni/demo-banking-app-template.git  
after cloning move code to html folder
sudo mv * /var/www/html/ 
remove html folder
sudo rm -rf downloadedfoldername  
ec2 public ip it will show website in browser

step 3 AMI Backup  
Create image > goto ec2 select > actions > create image > take image id  

**step 4 Launch Template**  
Create launch template > settings same as existing ec2  & select AMI previously created > launch 

**step 6 Auto Scalling Group**  
launch Auto scalling as per settings & attach load balancer  

test auto scalling group run perfeclt or not  
delete on ec2 auto scalling group will create new ec2 if its create new its wroking perfect  


**step 5 Load Balancer** 
before createating load balancer create target group  
in target group select all instance and peniding below then launch  

create loadbalance select atleast 2 subnets  > create load balancer  

for chaecking load balancer working fine or not  
copy DNS run in browser  


change ec2 code to see the diffference oc ec2 servers websites 








