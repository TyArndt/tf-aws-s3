resource "aws_s3_bucket" "this" {
    bucket = var.bucket_name
    tags = module.tags.tags
}

module "tags" {
    source = "git::https://github.com/TyArndt/tf-aws-tags.git"
    baseline_tags = var.baseline_tags
}

variable bucket_name {
    type = string
}

variable "baseline_tags" {
  type = map(string)
}