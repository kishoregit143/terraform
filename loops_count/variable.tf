variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
}
variable "zone_id" {
    default = "Z07848402FDVN47BEURKI"
}

variable "domain_name" {
    default = "devopslab.fun"
}

variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}
variable "instance_type" {
    default = "t3.micro"
}