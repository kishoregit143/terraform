
variable "project" {
    default = "roboshop"
}

variable "Environment" {
    default = "dev"
}

# variable "common_name" {
#     default = "${var.project}-{var.Environment}"
# }

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"

}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "common_tags" {
    type = map
    default = {
      Terraform = true
      Project = "roboshop"
      Environment = "DEV"

    } 

}
variable "sg_name" {
    type = string
    default = "allow_all_terf"
    # optional
    description = "Security group name to attache ec2instance"
}    

variable "cidr" {
   type = list
   default = ["0.0.0.0/0"]

}   

variable "egress_from_port" {
   default = 0
}   

variable "egress_to_port" {
   default = 0
}   

variable "ingress_from_port" {
   default = 0
}   

variable "ingress_to_port" {
   default = 0
}      
variable "protocol" {
    type = number
    default = -1
}

