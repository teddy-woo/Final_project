# resource "aws_lb_target_group" "alb_tg" {
#   name     = "ecs-lb-tg"
#   port     = 80
#   protocol = "HTTP"
#   vpc_id   = aws_vpc.main.id
# }

# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
# }
