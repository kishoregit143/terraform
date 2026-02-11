resource "aws_instance" "terraform" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all_terf.id]
    tags = {
       Name = "roboshop"
       Terraform = "true"

    }

      provisioner "local-exec"{
      command = "echo ${self.private_ip} > inventory"
      on_failure = continue
    }

    provisioner "local-exec"{
      command = "echo Instance is destroyed"
      when    = destroy
    }
}

resource "aws_security_group" "allow_all_terf" {
  name        = "allow_all_terf"
  
    egress {
    from_port        = 0 # from port 0 to all ports
    to_port          = 0
    protocol         = "-1" # means  all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet
  }
    ingress {
    from_port        = 0 # from port 0 to all ports
    to_port          = 0
    protocol         = "-1" # means  all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet
  }

  tags = {

    Name = "allow_all_ter"
  }
  }