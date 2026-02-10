variable "instances" {
    default = [ "mongodb", "redis", "mysql" ]
    // default = {
    //     mongodb = "t3.micro"
    //     redis = "t3.micro"
    //     mysql = "t3.small"
    // }
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