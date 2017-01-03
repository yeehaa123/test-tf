output "stage" {
  value = "${var.stage}"
}
output "streams" {
  value = "${module.tables.streams}"
}


