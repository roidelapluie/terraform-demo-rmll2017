output "machines" {
  value = "You asked to get ${var.machine_count} ${var.machine_count > 1 ? "pods" : "pod"}"
}
