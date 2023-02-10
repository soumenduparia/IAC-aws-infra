# VPC variables
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
}

variable "vpc_azs" {
  description = "List of AZs"
  type        = list(string)
}

variable "vpc_public_subnets" {
  description = "List of public subnet CIDR ranges"
  type        = list(string)
}

variable "vpc_private_subnets" {
  description = "List of private subnet CIDR ranges"
  type        = list(string)
}

variable "vpc_database_subnets" {
  description = "List of database subnet CIDR ranges"
  type        = list(string)
}

variable "vpc_tags" {
  description = "Tags to apply to vpc peering for api x data vpc"
  type        = map(string)
}



# ALB variables
variable "alb_sg_name" {
  description = "Application load balancer security group name"
  type        = string
}

variable "alb_sg_ingress_cidr_blocks" {
  description = "Application load balancer cidr blocks"
  type        = list(any)
}

variable "alb_sg_description" {
  description = "Application load balancer security group description"
  type        = string
}

variable "alb_sg_tags" {
  description = "Application load balancer security group tags"
  type        = map(string)
}

variable "alb_description" {
  description = "Application load balancer description"
  type        = string
}

variable "alb_name" {
  description = "Application load balancer name"
  type        = string
}

variable "alb_http_tcp_listeners_port" {
  description = "Application load balancer http listeners port"
  type        = number
}

variable "alb_target_group_name" {
  description = "Application load balancer target group name"
  type        = string
}

variable "alb_target_groups_backend_port" {
  description = "Application load balancer http listeners port"
  type        = number
}

variable "alb_tags" {
  description = "Application load balancer tags"
  type        = map(string)
}

# ASG variables

variable "asg_sg_name" {
  description = "Name of the autoscaling group security group"
  type        = string
}

variable "asg_sg_description" {
  description = "Description of the autoscaling group security group"
  type        = string
}

variable "asg_sg_tags" {
  description = "Tags for autoscaling group security group"
  type        = map(string)
}

variable "asg_name" {
  description = "Name of the autoscaling group"
  type        = string
}

variable "asg_min_size" {
  description = "Auto scaling minimum size"
  type        = number
}

variable "asg_max_size" {
  description = "Auto scaling maximum size"
  type        = number
}

variable "asg_desired_capacity" {
  description = "Auto scaling desired capacity"
  type        = number
}

variable "asg_wait_for_capacity_timeout" {
  description = "Auto scaling wait for capacity timeout"
  type        = number
}

variable "asg_health_check_type" {
  description = "Auto scaling health check type"
  type        = string
}

variable "asg_launch_template_name" {
  description = "Name of the autoscaling group launch template"
  type        = string
}

variable "asg_launch_template_description" {
  description = "Description of the autoscaling group security group"
  type        = string
}

variable "asg_update_default_version" {
  description = "Auto scaling group update default version"
  type        = bool
}

variable "asg_image_id" {
  description = "Auto scaling group image id"
  type        = string
}

variable "asg_instance_type" {
  description = "Auto scaling group instance type"
  type        = string
}

variable "asg_ebs_optimized" {
  description = "Auto scaling group ebs optimized"
  type        = bool
}

variable "asg_enable_monitoring" {
  description = "Auto scaling group enable monitoring"
  type        = bool
}

variable "asg_create_iam_instance_profile" {
  description = "Auto scaling group create iam instance profile"
  type        = bool
}

variable "asg_iam_role_name" {
  description = "Auto scaling group iam role name"
  type        = string
}

variable "asg_iam_role_path" {
  description = "Auto scaling group iam role path"
  type        = string
}

variable "asg_iam_role_description" {
  description = "Auto scaling group iam role description"
  type        = string
}

variable "asg_iam_role_tags" {
  description = "Auto scaling group iam role tags"
  type        = map(string)
}

variable "asg_block_device_mappings_volume_size_0" {
  description = "Auto scaling group block device mapping volume size 0"
  type        = number
}

variable "asg_block_device_mappings_volume_size_1" {
  description = "Auto scaling group block device mapping volume size 1"
  type        = number
}

variable "asg_instance_tags" {
  description = "Auto scaling group instance tags"
  type        = map(string)
}

variable "asg_volume_tags" {
  description = "Auto scaling group volume tags"
  type        = map(string)
}

variable "asg_tags" {
  description = "Auto scaling group tags"
  type        = map(string)
}


# RDS variables
variable "rds_sg_name" {
  description = "Relational database service security group name"
  type        = string
}

variable "rds_sg_description" {
  description = "Relational database service security group description"
  type        = string
}

variable "rds_sg_tags" {
  description = "Relational database service security group tags"
  type        = map(string)
}

variable "rds_identifier" {
  description = "Relational database service identifier"
  type        = string
}

variable "rds_mysql_engine" {
  description = "Relational database service mysql engine"
  type        = string
}

variable "rds_engine_version" {
  description = "Relational database service mysql engine version"
  type        = string
}

variable "rds_family" {
  description = "Relational database service family"
  type        = string
}

variable "rds_major_engine_version" {
  description = "Relational database service major engine version"
  type        = string
}

variable "rds_instance_class" {
  description = "Relational database service instance class"
  type        = string
}

variable "rds_allocated_storage" {
  description = "Relational database service allocated storage"
  type        = number
}

variable "rds_max_allocated_storage" {
  description = "Relational database service max allocated storage"
  type        = number
}

variable "rds_db_name" {
  description = "Relational database service db name"
  type        = string
}

variable "rds_username" {
  description = "Relational database service username"
  type        = string
}

variable "rds_port" {
  description = "Relational database service port"
  type        = number
}

variable "rds_multi_az" {
  description = "Relational database service multi az"
  type        = bool
}

variable "rds_maintenance_window" {
  description = "Relational database service maintenance window"
  type        = string
}

variable "rds_backup_window" {
  description = "Relational database service backup window"
  type        = string
}

variable "rds_enabled_cloudwatch_logs_exports" {
  description = "Relational database service enabled cloudwatch log exports"
  type        = list(any)
}

variable "rds_create_cloudwatch_log_group" {
  description = "Relational database service create cloudwatch log group"
  type        = bool
}

variable "rds_backup_retention_period" {
  description = "Relational database service backup retention period"
  type        = number
}

variable "rds_skip_final_snapshot" {
  description = "Relational database service skip final snapshot"
  type        = bool
}

variable "rds_deletion_protection" {
  description = "Relational database service deletion protection"
  type        = bool
}

variable "rds_performance_insights_enabled" {
  description = "Relational database service insights enabled"
  type        = bool
}

variable "rds_performance_insights_retention_period" {
  description = "Relational database service retention period"
  type        = number
}

variable "rds_create_monitoring_role" {
  description = "Relational database service create monitoring role"
  type        = bool
}

variable "rds_monitoring_interval" {
  description = "Relational database service monitoring interval"
  type        = number
}

variable "rds_tags" {
  description = "Relational database service tags"
  type        = map(string)
}

variable "rds_db_instance_tags" {
  description = "Relational database service db instance tags"
  type        = map(string)
}

variable "rds_db_option_group_tags" {
  description = "Relational database service db option group tags"
  type        = map(string)
}

variable "rds_db_parameter_group_tags" {
  description = "Relational database service db parameter group tags"
  type        = map(string)
}

variable "rds_db_subnet_group_tags" {
  description = "Relational database service db subnet group tags"
  type        = map(string)
}