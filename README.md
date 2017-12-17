# TerraformTest 

#### Starting one-off standalone services 

Application 

Dockerfile 

ECR resource 
output = application url in ECR 

init script 
- run docker 
- push container to [output] 
- check docker service status 

launch instance 
userdata = init script 

auto scaling group 
- put instance in ASG of 1 


