# Terraform demo

Terraform demo given at rmll 2017

To try this demo, you will need:

- [Terraform](https://terraform.io) 0.10.0 beta 1
  (https://releases.hashicorp.com/terraform/0.10.0-beta1/) - 0.10.0 is required
  to get support for kubernetes pods
- [minikube](https://kubernetes.io/docs/getting-started-guides/minikube/) with
  kubernetes 1.7.0: when starting minikube, use `minikube start
  --kubernetes-version v1.7.0`

# Heads up!

- This is a Terraform demo, not a kubernetes demo. It does not contain any kube
  or terraform best practices, instead it shows some capacities of terraform.
- We use secrets and not config maps because of bug
  https://github.com/hashicorp/terraform/issues/15468

