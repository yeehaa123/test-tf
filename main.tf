variable "stage" {}
variable "application" {}

module "buckets" {
  source = "./modules/buckets"
  application = "${var.application}"
  stage = "${var.stage}"
}

module "tables" {
  source = "./modules/tables"
  application = "${var.application}"
  stage = "${var.stage}"
}
