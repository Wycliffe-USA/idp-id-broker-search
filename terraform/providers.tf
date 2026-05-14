provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key

  default_tags {
    tags = merge({
      managed_by = "terraform"
      workspace  = terraform.workspace
    }, var.tags)
  }
}

provider "aws" {
  alias      = "secondary"
  region     = var.aws_region_secondary
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key

  default_tags {
    tags = merge({
      managed_by = "terraform"
      workspace  = terraform.workspace
    }, var.tags)
  }
}

# This can be removed once the third bucket has been removed
provider "aws" {
  alias      = "new_primary"
  region     = var.aws_region_new_primary
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key

  default_tags {
    tags = merge({
      managed_by = "terraform"
      workspace  = terraform.workspace
    }, var.tags)
  }
}
