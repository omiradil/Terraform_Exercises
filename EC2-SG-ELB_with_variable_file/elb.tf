data "aws_availability_zones" "all" {}

resource "aws_elb" "elb" {
  name               = "terraform-elb"  
  availability_zones = data.aws_availability_zones.all.names

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

   // ELB attachments
  instances                   = var.inst
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "terraform-elb"
  }
}

output "zones" {
    value = data.aws_availability_zones.all.names
}
