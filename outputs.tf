output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.public_subnets[0]
}

output "security_group_id" {
  value = aws_security_group.jenkins_sg.id
}

output "instance_id" {
  value = module.ec2_instance.id
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}

output "jenkins_url" {
  value = "http://${module.ec2_instance.public_ip}:8080"
}

output "web_application_url" {
  value = "http://${module.ec2_instance.public_ip}"
}

output "ssh_command" {
  value = "ssh -i nithinkey.pem ec2-user@${module.ec2_instance.public_ip}"
}
