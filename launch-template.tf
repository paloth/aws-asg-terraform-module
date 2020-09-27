resource "aws_launch_template" "this" {
  name                                 = "${var.name}-${var.env}-lt"
  disable_api_termination              = false
  ebs_optimized                        = false
  image_id                             = var.ami
  instance_initiated_shutdown_behavior = var.shutdown_behavior
  instance_type                        = var.instance_type
  vpc_security_group_ids               = aws_security_group.instance[*].id

  user_data = var.user_data

  iam_instance_profile {
    name = aws_iam_instance_profile.this.name
  }

  monitoring {
    enabled = false
  }

  tags = var.tags
}
