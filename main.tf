# Configure the Datadog provider
provider "datadog" {
  api_key = "${var.datadog_api_key}"
  app_key = "${var.datadog_app_key}"
}
module "monitor" {
  source = "./monitor"
}
module "dashboard" {
  source = "./dashboard"
}
