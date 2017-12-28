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


#### Notes and Questions 

Where should state be stored? In backend "consul" or "s3"? 
Doing this ensure always having the latest version of the state; 
* Is/When using s3 remote state, config the AWS creds in aws config; 

$ terraform init 

WARNING: Bucket (...) created successfully. 
Error setting properties and permissions on the bucket. 


Do you want to copy the state from "s3"?
  Would you like to copy the state from your prior backend "s3" to the
  newly configured "s3" backend? If you're reconfiguring the same backend,
  answering "yes" or "no" shouldn't make a difference. Please answer exactly
  "yes" or "no".


Do you want to copy state from "s3" to "s3"?
  Pre-existing state was found in "s3" while migrating to "s3". No existing
  state was found in "s3". Do you want to copy the state from "s3" to
  "s3"? Enter "yes" to copy and "no" to start with an empty state.


$ terraform destroy 

aws_instance.testbox0: Refreshing state... (ID: i-035eb029dfa698c45)
data.aws_ip_ranges.european_ec2: Refreshing state...

Error: Error refreshing state: 1 error(s) occurred:

* data.aws_ip_ranges.european_ec2: 1 error(s) occurred:

* data.aws_ip_ranges.european_ec2: data.aws_ip_ranges.european_ec2: Error reading response body: unexpected EOF


Ran terraform init to overcome this^ error; 





























