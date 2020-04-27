provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
  access_key = "AKIASZHPSUOS4RDLN5CH"
  secret_key = "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"


}


resource "aws_elb" "bar" {
  name               = "terraform-elb"
  availability_zones = ["ap-southeast-1a", "ap-southeast-1b"]

  

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  


  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  instances           = ["i-0faf052de1b84dacc", "i-004115dfedf9cedea"]


  tags = {
    Name = "terraform-elb"
  }
}