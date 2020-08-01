variable "prometheus_operator_version" {
  default = "release-0.38"
}

variable "enable_crd_servicemonitors" {
  default = true
}

variable "enable_crd_prometheusrules" {
  default = true
}

variable "enable_crd_alertmanagers" {
  default = true
}

variable "enable_crd_podmonitors" {
  default = true
}

variable "enable_crd_prometheuses" {
  default = true
}

variable "enable_crd_thanosrulers" {
  default = true
}

variable "depends_list" {
  default = []
}
