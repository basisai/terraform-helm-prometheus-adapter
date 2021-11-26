variable "release_name" {
  description = "Helm release name for Prometheus"
  type        = string
  default     = "prometheus-adapter"
}

variable "chart_name" {
  description = "Helm chart name to provision"
  type        = string
  default     = "prometheus-adapter"
}

variable "chart_repository" {
  description = "Helm repository for the chart"
  type        = string
  default     = "https://prometheus-community.github.io/helm-charts"
}

variable "chart_version" {
  description = "Version of Chart to install. Set to empty to install the latest version"
  type        = string
  default     = ""
}

variable "chart_namespace" {
  description = "Namespace to install the chart into"
  type        = string
  default     = "default"
}

variable "force_update" {
  description = "Force resource update through delete/recreate if needed."
  type        = bool
  default     = false
}

variable "max_history" {
  description = "Max History for Helm"
  type        = number
  default     = 20
}

variable "affinity" {
  description = "Affinity for the pods"
  type        = map(any)
  default     = {}
}

variable "image" {
  description = "Docker image for the Prometheus Adapter"
  type        = string
  default     = "k8s.gcr.io/prometheus-adapter/prometheus-adapter"
}

variable "tag" {
  description = "Docker Image tag for the Prometheus Adapter"
  type        = string
  default     = "v0.9.1"
}

variable "log_level" {
  description = "Numerical log level for the adapter"
  type        = number
  default     = 4
}

variable "priority_class_name" {
  description = "Pod Priority Class name"
  type        = string
  default     = ""
}

variable "prometheus_url" {
  description = "Address for Prometheus"
  type        = string
  default     = "http://prometheus.default.svc"
}

variable "prometheus_port" {
  description = "Prometheus port"
  type        = number
  default     = 9090
}

variable "replicas" {
  description = "Number of replicas"
  type        = number
  default     = 1
}

variable "resources" {
  description = "Resources for the pod"
  type        = map(any)
  default     = {}
}

variable "host_network_enabled" {
  description = "Specifies if prometheus-adapter should be started in hostNetwork mode."
  type        = bool
  default     = false
}

variable "psp_enable" {
  description = "Enable the use of pod security policies"
  type        = bool
  default     = true
}

variable "service_account_annotations" {
  description = "Service Account Annotations"
  type        = map(any)
  default     = {}
}

variable "extra_arguments" {
  description = "Extra arguments for the container"
  type        = list(any)
  default     = []
}

variable "extra_volumes" {
  description = "Extra volumes for the adapter"
  type        = list(any)
  default     = []
}

variable "extra_volume_mounts" {
  description = "Extra volume mounts for the adapter container"
  type        = list(any)
  default     = []
}

variable "tolerations" {
  description = "Tolerations for the pod"
  type        = list(any)
  default     = []
}

variable "node_selector" {
  description = "nodeSelector for the pod"
  type        = map(any)
  default     = {}
}

variable "pod_labels" {
  description = "Pod labels"
  type        = map(any)
  default     = {}
}

variable "pod_annotations" {
  description = "Pod annotations"
  type        = map(any)
  default     = {}
}

variable "custom_labels" {
  description = "Additional labels to add to all resources"
  type        = map(any)
  default     = {}
}

variable "custom_annotations" {
  description = "Additional annotations to add to all resources"
  type        = map(any)
  default     = {}
}

variable "pod_security_context" {
  description = "securityContext for the pod"
  type        = map(any)
  default = {
    fsGroup = 10001
  }
}

variable "pdb_enable" {
  description = "Enable pod disruption budget"
  type        = bool
  default     = true
}

variable "pdb_max_unavailable" {
  description = "Max unavailable pods"
  default     = ""
}

variable "pdb_min_available" {
  description = "Min available pods"
  default     = 1
}

variable "rules_default" {
  description = "Use the default rules from the chart"
  type        = bool
  default     = true
}

variable "rules_custom" {
  description = "Custom metrics rules"
  type        = list(any)
  default     = []
}

variable "rules_existing" {
  description = "ConfigMap containing existing rules"
  default     = null
}

variable "rules_external" {
  description = "External metrics rules"
  type        = list(any)
  default     = []
}

variable "rules_resource" {
  description = "Custom resource rules"
  type        = map(any)
  default     = {}
}

variable "service_annotations" {
  description = "Service Annotations"
  type        = map(any)
  default     = {}
}

variable "service_port" {
  description = "Service port"
  type        = string
  default     = "443"
}

variable "service_type" {
  description = "Service Type"
  type        = string
  default     = "ClusterIP"
}
