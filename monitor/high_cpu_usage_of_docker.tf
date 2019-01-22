resource "datadog_monitor" "high_cpu_usage_of_docker" {
  name               = "High CPU Usage of Docker"
  type               = "metric alert"
  message            = <<EOT
High CPU Usage of Docker @bywang@thoughtworks.com
EOT
  escalation_message = ""

  query = "max(last_5m):avg:docker.cpu.usage{*} > 10"
  notify_no_data    = false
  renotify_interval = 0
  notify_audit = false
  timeout_h = 0
  include_tags = true
  require_full_window = false
  new_host_delay = 300
  thresholds {
    warning = 9.0
    critical = 10.0
  }

}
