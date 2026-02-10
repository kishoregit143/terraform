resource "aws_instance" "terraform" {
    # count = 4
    #for_each = var.instances
    for_each = toset(var.instances)
    ami = var.ami_id
    #instance_type = var.instance_type
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all_terf.id]
    tags = {
       #Name = var.instances[count.index]
       #Name = each.key
       Name = each.value
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