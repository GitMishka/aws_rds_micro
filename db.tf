provider "aws" {
  region = "us-east-1"  

resource "aws_db_subnet_group" "example" {
  name        = "example-subnet-group"
  description = "Example subnet group for RDS"

  subnet_ids = [
    "subnet-12345678",
    "subnet-23456789",
  ]
}

resource "aws_db_instance" "example" {
  identifier              = "example-db"
  engine                  = "postgres"
  instance_class          = "db.t3.medium"
  allocated_storage       = 20
  storage_type            = "gp2"
  username                = "admin" #your user
  password                = "password"  #your desired password

  db_subnet_group_name    = aws_db_subnet_group.example.name
  vpc_security_group_ids  = ["sg-12345678"]  


  publicly_accessible    = true
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Adjust the IP range as necessary
  }
}

output "database_endpoint" {
  value = aws_db_instance.example.endpoint
}
