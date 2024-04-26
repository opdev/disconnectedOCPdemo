/*
  Create two standalone RHEL 7.9 VM's in the custom VPC 
*/

# Allow all traffic on private subnet to reach standalone vms 
resource "aws_security_group" "standalone_vms" {
  name        = "${var.PROJECT_NAME}-standalone-vms-sg"
  description = "Security group for standalone vms"
  vpc_id      = aws_vpc.disconnected_ocp_demo_vpc.id

  ingress {
    description = "incoming traffic to standalone vms"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["${var.private_subnet_cidr}"]
  }
  ingress {
    description     = "ssh from bastion server"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [data.aws_security_group.selected.id]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "${var.PROJECT_NAME}-standalone-vms-sg"
    Project = "${var.PROJECT_NAME}"
  }
}

data "aws_security_group" "selected_vm" {
  filter {
    name   = "group-name"
    values = ["${var.PROJECT_NAME}-standalone-vms-sg"]
  }
  depends_on = [
    aws_security_group.standalone_vms
  ]
}
