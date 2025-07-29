# 🚀 AWS High Availability Web App Deployment Guide

Here’s a detailed explanation of why each step is needed in your EC2 + Load Balancer + Auto Scaling setup for a demo banking app:


---

🔹 Step 1: Launch EC2

Why?
You need a virtual server (EC2 instance) to host and run your application. This is the foundational compute resource on AWS where your app will be deployed and served to users.


---

🔹 Step 2: Application Host Setup

This is about preparing your EC2 to serve a web app.

1. sudo apt update

Updates the package list from Ubuntu repositories to ensure you get the latest software.



2. sudo apt install nginx -y

Installs the Nginx web server, which is used to serve your web app to clients (browsers).



3. cd /var/www/html/

Navigates to the default root directory of Nginx where your site files need to be placed.



4. Clone GitHub repo

git clone https://github.com/JaysonMnguni/demo-banking-app-template.git

Pulls your website code from the repository to the EC2 instance.



5. Move code to web root

sudo mv * /var/www/html/

Moves your app files into the Nginx root directory so they can be served to users.



6. Clean up

sudo rm -rf downloadedfoldername

Removes unnecessary folders (like the git folder) to avoid clutter.



7. Access via browser

Using the public IP of EC2, you can test if your website is hosted correctly and reachable.





---

🔹 Step 3: AMI Backup

Why?
Creating an AMI (Amazon Machine Image) of your configured EC2 helps in making a reusable image of your setup — OS + Nginx + Code. This allows launching identical instances in the future without redoing setup steps.

How:
Go to EC2 > Actions > Create Image

This captures the current state of your EC2 (system + app files)


Use:
Useful for Auto Scaling, Launch Templates, backups, or disaster recovery.



---

🔹 Step 4: Launch Template

Why?
A Launch Template defines how new EC2 instances should be created (AMI, instance type, key pair, security group, etc.). This avoids manual setup for each new instance.

You specify the AMI created in step 3, so new instances already include your app and settings.

It's a requirement for Auto Scaling Groups to define how EC2s should be launched automatically.



---

🔹 Step 5: Load Balancer

Why?
A Load Balancer (LB) distributes incoming traffic across multiple EC2 instances for:

High availability

Better performance

Failover in case one instance crashes


Before LB, create Target Group:

A Target Group holds the list of EC2s behind the Load Balancer.

It checks health and routes requests to healthy instances only.


Steps:

Create Target Group (e.g., HTTP)

Register existing instances

Then create Load Balancer (select 2+ subnets for availability zones)


How to Test:

Open LB's DNS name in browser. It should show your app.

It means LB is correctly routing traffic.



---

🔹 Step 6: Auto Scaling Group (ASG)

Why?
Auto Scaling Group ensures:

Your app stays available and resilient

Automatically adds or removes EC2s based on traffic/load or failure


How it works:

You attach the Launch Template (from Step 4)

You configure:

Desired capacity (e.g., 1 instance)

Min & max number of EC2s

Scaling policy (e.g., add EC2 if CPU > 70%)



Attach Load Balancer:

So that new EC2s launched by ASG are added to the Target Group automatically


Testing ASG:

Manually terminate one EC2 in the ASG

ASG should automatically launch a new one using the Launch Template

This proves self-healing is working



---

✅ Bonus: Code Difference Test

After everything is working:

You can change code on one EC2 (e.g., edit HTML page)

Refresh the Load Balancer URL multiple times

If you see different content on each refresh → confirms load balancing is active



---

💡 Summary Table

Step	Purpose

Launch EC2	Base compute for hosting app
Install Nginx & Deploy Code	Serve your web application
Create AMI	Reusable template of your configured server
Launch Template	Blueprint for new EC2s (used in auto scaling)
Create Target Group & Load Balancer	Distribute traffic and ensure availability
Auto Scaling Group	Maintain and scale EC2s automatically



---

Let me know if you’d like a visual architecture diagram or commands for each step in a shell script format.









































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









