output "role_id" {
  value       = aws_autoscaling_group.this.id
  description = "The autoscaling group id"
}

output "role_name" {
  value       = aws_autoscaling_group.this.name
  description = "The name of the autoscale group"
}

output "role_arn" {
  value       = aws_autoscaling_group.this.arn
  description = "The ARN for this AutoScaling Group"
}
