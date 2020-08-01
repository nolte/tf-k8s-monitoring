output "depend_on" {
  # list all resources in this module here so that other modules are able to depend on this
  value = [
    kubectl_manifest.servicemonitors,
    kubectl_manifest.prometheusrules,
    kubectl_manifest.alertmanagers,
    kubectl_manifest.podmonitors,
    kubectl_manifest.prometheuses,
    kubectl_manifest.thanosrulers,
  ]
}
