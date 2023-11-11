## Ec2 instance 

resource "aws_instance" "ec2-jenkins_server" {
  ami                    = "ami-0bb4c991fa89d4b9b"
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  instance_type          = "t2.micro"
  key_name               = "ec2-demo"
  subnet_id              = aws_subnet.public_subnet1.id
  user_data              = file("user-data.sh")
  tags = {
    Name = "Jenkins instance"
    env  = "Dev"
  }

}