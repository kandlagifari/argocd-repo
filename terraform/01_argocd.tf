# helm install argocd -n argocd --create-namespace argo/argo-cd --version 7.1.4 -f terraform/values/argocd.yaml
resource "helm_release" "argocd" {
  name = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "7.1.4" # Chart Version

  values = [file("values/argocd.yaml")]
}
