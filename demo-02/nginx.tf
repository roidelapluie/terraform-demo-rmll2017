resource "kubernetes_pod" "rmll-demo" {
  count = "${var.machine_count}"

  metadata {
    name = "${format("rmll%02d", count.index + 1)}"

    labels = {
      run = "nginx"
    }
  }

  spec {
    container {
      image = "${var.base_image}:${var.base_image_version}"
      name  = "${var.base_image}"

      port {
        container_port = 80
      }

      volume_mount {
        name       = "nginxconfig"
        mount_path = "/etc/nginx/conf.d"
      }
    }

    volume {
      secret = {
        secret_name = "${element(kubernetes_secret.nginx-config.*.metadata.0.name, count.index)}"
      }

      name = "nginxconfig"
    }
  }
}
