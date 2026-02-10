resource "aws_instance" "terraform" {
    ami = data.aws_ami.joindevops.id
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all_terf.id]
    tags = {
       Name = "roboshop"
       Terraform = "true"

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