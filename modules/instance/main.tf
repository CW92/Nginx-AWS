resource "aws_instance" "ec2" {
  ami           =  var.ami
  instance_type =  var.instance_type
  key_name      =  var.key_name
  vpc_security_group_ids = [
    var.security_group_id,
  ]
  user_data = <<-EOF
              #!/bin/bash
              yum install -y docker
              systemctl enable docker
              systemctl start docker
              sudo chown $USER /var/run/docker.sock
              docker run -p 80:80 -d nginx
              EOF
}