resource "kubernetes_service" "rmll_demo" {
        metadata {
name = "rmll-demo-nginx-service"
}

spec {
        selector             {
run =                        "nginx"
}

port {
                                    port        = 8080
target_port =       80
}

                        type = "LoadBalancer"
}
    }
