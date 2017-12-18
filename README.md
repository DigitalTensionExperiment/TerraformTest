# TerraformTest 

#### Starting one-off standalone services 

Application 
- flaskApp.py 

Dockerfile 

launch ECR resource 
(output = application url in ECR)  

init script (systemD unit file) 
- run docker 
- push container to [output] 
- check docker service status 

launch instance 
(userdata = init script)  
- flaskapp.service needs to be put into /etc/systemd/system (?) 
- systemctl daemon-reload 
- systemctl status init.service (?) 
- systemctl start init 
- systemctl status docker 

auto scaling group 
- put instance in ASG of 1 


