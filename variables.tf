# Global variable

variable "env" {
  type        = string
  description = "Infrastructure environment"
}

## Asg variable

variable "name" {
  type        = string
  description = "AutoScaling Group name"
}

variable "lt_version" {
  type        = string
  description = "Launch Template version to use"
  default     = "$Latest"
}

variable "scheduled_actions" {
  type        = map(string)
  description = "Scheduled actions for the Asg"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Asg tags"
  default     = {}
}

## LT variables

variable "shutdown_behavior" {
  type        = string
  description = "AutoScaling instance shutdown behavior"
  default     = "stop"
}

variable "user_data" {
  type        = any
  description = "User data to execute at instance start"
  deautl      = null
}
