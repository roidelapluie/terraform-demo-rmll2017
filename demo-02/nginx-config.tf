data "template_file" "nginx-config" {
  count    = "${var.machine_count}"
  template = "${file("default.conf.tpl")}"

  vars {
    podname = "${format("rmll%02d", count.index + 1)}"
  }
}

resource "kubernetes_secret" "nginx-config" {
  count = "${var.machine_count}"

  metadata {
    name = "${format("nginx-rmll%02d", count.index + 1)}"
  }

  data {
    "default.conf" = "${element(data.template_file.nginx-config.*.rendered, count.index)}"
  }
}
