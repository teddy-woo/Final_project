
# scaling 대상
resource "aws_appautoscaling_target" "terr_ecs_target_funding" {
    max_capacity = 4
    min_capacity = 1
    
    resource_id = "service/${aws_ecs_cluster.crowd_cluster.name}/${aws_ecs_service.terraform_ecs_serivce.name}"
    scalable_dimension = "ecs:service:DesiredCount"
    service_namespace = "ecs"
}


# scale 정책
resource "aws_appautoscaling_policy" "autoscale_policy" {
    name = "terr-autoscale-funding"

    policy_type = "TargetTrackingScaling"
  
    resource_id        = aws_appautoscaling_target.terr_ecs_target_funding.resource_id
    scalable_dimension = aws_appautoscaling_target.terr_ecs_target_funding.scalable_dimension
    service_namespace  = aws_appautoscaling_target.terr_ecs_target_funding.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageCPUUtilization"
    }

    target_value       = 40
    scale_in_cooldown  = 10
    scale_out_cooldown = 10
  }
}


# scaling 대상
resource "aws_appautoscaling_target" "terr_ecs_target_funding2" {
    max_capacity = 4
    min_capacity = 1
    
    resource_id = "service/${aws_ecs_cluster.crowd_cluster.name}/${aws_ecs_service.terraform_ecs_serivce2.name}"
    scalable_dimension = "ecs:service:DesiredCount"
    service_namespace = "ecs"
}


# scale 정책
resource "aws_appautoscaling_policy" "autoscale_policy2" {
    name = "terr-autoscale-funding-rw"

    policy_type = "TargetTrackingScaling"
  
    resource_id        = aws_appautoscaling_target.terr_ecs_target_funding2.resource_id
    scalable_dimension = aws_appautoscaling_target.terr_ecs_target_funding2.scalable_dimension
    service_namespace  = aws_appautoscaling_target.terr_ecs_target_funding2.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageCPUUtilization"
    }

    target_value       = 40
    scale_in_cooldown  = 10
    scale_out_cooldown = 10
  }
}

# scaling 대상
resource "aws_appautoscaling_target" "terr_ecs_target_payment" {
    max_capacity = 4
    min_capacity = 1
    
    resource_id = "service/${aws_ecs_cluster.crowd_cluster.name}/${aws_ecs_service.terraform_ecs_serivce3.name}"
    scalable_dimension = "ecs:service:DesiredCount"
    service_namespace = "ecs"
}


# scale 정책
resource "aws_appautoscaling_policy" "autoscale_policy3" {
    name = "terr-autoscale-payment"

    policy_type = "TargetTrackingScaling"
  
    resource_id        = aws_appautoscaling_target.terr_ecs_target_payment.resource_id
    scalable_dimension = aws_appautoscaling_target.terr_ecs_target_payment.scalable_dimension
    service_namespace  = aws_appautoscaling_target.terr_ecs_target_payment.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ECSServiceAverageCPUUtilization"
    }

    target_value       = 40
    scale_in_cooldown  = 10
    scale_out_cooldown = 10
  }
}