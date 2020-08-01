

locals {
  prometheus_crd_base_url = "https://raw.githubusercontent.com/coreos/prometheus-operator/${var.prometheus_operator_version}/example/prometheus-operator-crd"
}

data "http" "servicemonitors" {
  url = "${local.prometheus_crd_base_url}/monitoring.coreos.com_servicemonitors.yaml"
}

resource "kubectl_manifest" "servicemonitors" {
  count     = var.enable_crd_servicemonitors ? 1 : 0
  yaml_body = data.http.servicemonitors.body
}

data "http" "prometheusrules" {
  url = "${local.prometheus_crd_base_url}/monitoring.coreos.com_prometheusrules.yaml"
}

resource "kubectl_manifest" "prometheusrules" {
  count     = var.enable_crd_prometheusrules ? 1 : 0
  yaml_body = data.http.prometheusrules.body
}

data "http" "alertmanagers" {
  url = "${local.prometheus_crd_base_url}/monitoring.coreos.com_alertmanagers.yaml"
}

resource "kubectl_manifest" "alertmanagers" {
  count     = var.enable_crd_alertmanagers ? 1 : 0
  yaml_body = data.http.alertmanagers.body
}

data "http" "podmonitors" {
  url = "${local.prometheus_crd_base_url}/monitoring.coreos.com_podmonitors.yaml"
}

resource "kubectl_manifest" "podmonitors" {
  count     = var.enable_crd_podmonitors ? 1 : 0
  yaml_body = data.http.podmonitors.body
}

data "http" "prometheuses" {
  url = "${local.prometheus_crd_base_url}/monitoring.coreos.com_prometheuses.yaml"
}

resource "kubectl_manifest" "prometheuses" {
  count     = var.enable_crd_prometheuses ? 1 : 0
  yaml_body = data.http.prometheuses.body
}

data "http" "thanosrulers" {
  url = "${local.prometheus_crd_base_url}/monitoring.coreos.com_thanosrulers.yaml"
}

resource "kubectl_manifest" "thanosrulers" {
  count     = var.enable_crd_thanosrulers ? 1 : 0
  yaml_body = data.http.thanosrulers.body
}
