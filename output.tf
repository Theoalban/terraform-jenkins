output "public-ip" {
  value = aws_instance.ec2-jenkins_server.public_ip

}