resource "aws_ecr_repository" "new_ecr" {
  count                = length(var.new_ecr)
  name                 = element(var.new_ecr, count.index )
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}