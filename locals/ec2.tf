resource "aws_instance" "terraform" {
    ami = local.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all_terf.id]
    tags = local.ec2_tags

}

resource "aws_security_group" "allow_all_terf" {
  name        = "${local.common_name}-allow_all_terf"
  
    egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }
    ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  tags = {

    name  = "${local.common_name}-allow_all_terf"
  }
  }