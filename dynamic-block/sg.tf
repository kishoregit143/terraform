resource "aws_security_group" "roboshop_instance" {
  name        = "robosho-strict-sg"
  
    egress {
    from_port        = 0 # from port 0 to all ports
    to_port          = 0
    protocol         = "-1" # means  all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet
  }
    #block
    dynamic "ingress" {
    for_each  = toset(var.ingress_ports)
    content{
    from_port        = ingress.value  # here ingress is special keyword
    to_port          = ingress.value
    protocol         = "tcp" # means  all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet
 }
    }
#   ingress {
#     from_port        = 3306 # from port 0 to all ports
#     to_port          = 3306
#     protocol         = "-1" # means  all protocols
#     cidr_blocks      = ["0.0.0.0/0"] #internet
#   }
#   ingress {
#     from_port        = 80# from port 0 to all ports
#     to_port          = 80
#     protocol         = "-1" # means  all protocols
#     cidr_blocks      = ["0.0.0.0/0"] #internet
#   }
#   ingress {
#     from_port        = 8080 # from port 0 to all ports
#     to_port          = 8080
#     protocol         = "-1" # means  all protocols
#     cidr_blocks      = ["0.0.0.0/0"] #internet
#   }

  tags = {

    Name = "robosho-strict-sg"
  }
  }