# Create a new timeboard
resource "datadog_timeboard" "docker_cpu_usage" {
  title       = "Docker CPU Usage"
  description = "created using the Datadog provider in Terraform"
  read_only   = true

  graph {
    title = "CPU Usage"
    viz   = "timeseries"

    request {
      q    = "avg:docker.cpu.usage{*}"
      type = "lines"
    }
  }
}
