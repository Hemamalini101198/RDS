resource "aws_db_instance" "rds_db" {
  identifier           = var.identifier
  engine               = var.engine
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  allocated_storage    = var.storage
  storage_type         = var.storage_type
  publicly_accessible  = true
  multi_az             = false
  storage_encrypted     = true
  #db_subnet_group_name = "your-db-subnet-group"
  vpc_security_group_ids = var.vpc_security_group_ids
  performance_insights_enabled = true
  performance_insights_retention_period = 7
  final_snapshot_identifier = var.final_snapshot_identifier
  skip_final_snapshot = false
}
