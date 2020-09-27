resource "aws_iam_instance_profile" "this" {
  name = "${var.name}-${var.env}-role"
  role = var.role_name
}
