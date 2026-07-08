# Private ECR repository — ECS pulls the image from here, not from Docker Hub
resource "aws_ecr_repository" "main" {
  name                 = var.project_name
  image_tag_mutability = "MUTABLE"
  force_delete         = true # lets terraform destroy clean up even if images exist

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = var.project_name
  }
}

