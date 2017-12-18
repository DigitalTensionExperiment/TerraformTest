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

auto scaling group 
- put instance in ASG of 1 


