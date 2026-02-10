resource "aws_route53_record" "roboshop" {
<<<<<<< HEAD
  count = 4   
=======
  count = length(var.instances)   
>>>>>>> 93f5506 (terraform)
  zone_id = var.zone_id
  name = "${var.instances[count.index]}.${var.domain_name}"
  type = "A"
  ttl = 1
  records = [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true
<<<<<<< HEAD
}
=======
<<<<<<< HEAD
}
=======
<<<<<<< HEAD
}
=======
}

>>>>>>> 200687e (terraform)
>>>>>>> be0fc42 (terraform)
>>>>>>> 93f5506 (terraform)
