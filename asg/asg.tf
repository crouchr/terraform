resource "aws_autoscaling_group" "myasg" {
  launch_configuration = aws_launch_configuration.mylaunchconfig.name
  name = "dev-rch-asg-01"   # This appears in the console

  vpc_zone_identifier = [data.terraform_remote_state.vpc.outputs.public_subnet_lab01]

  #load_balancers = ["aws_lb.mylb.name"]
  #target_group_arns = [aws_lb_target_group.target_group_80.arn]
  #health_check_type = "ELB"

  min_size = 2
  max_size = 3

  tags = [
    {
      key = "Name"
      value = "dev-rch-asg-01"
      propagate_at_launch = true
    },
    {
      key = "OWNER_TEAM"
      value = "NETWORK"
      propagate_at_launch = true
    },
    {
      key = "PURPOSE"
      value = "SANDBOX_LAB"
      propagate_at_launch = true
    },
  ]
}
