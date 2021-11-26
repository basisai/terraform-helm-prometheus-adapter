resource "helm_release" "prometheus_adapter" {
  name         = var.release_name
  chart        = var.chart_name
  repository   = var.chart_repository
  version      = var.chart_version
  namespace    = var.chart_namespace
  force_update = var.force_update

  max_history = var.max_history

  values = [
    templatefile("${path.module}/templates/values.yaml", local.values),
  ]
}

locals {
  values = {
    image    = var.image
    tag      = var.tag
    replicas = var.replicas

    host_network_enabled = var.host_network_enabled

    service_account_annotations = jsonencode(var.service_account_annotations)

    resources = jsonencode(var.resources)

    log_level           = jsonencode(var.log_level)
    priority_class_name = jsonencode(var.priority_class_name)
    psp_enable          = var.psp_enable

    prometheus_url  = var.prometheus_url
    prometheus_port = jsonencode(var.prometheus_port)

    service_type        = jsonencode(var.service_type)
    service_port        = jsonencode(var.service_port)
    service_annotations = jsonencode(var.service_annotations)

    extra_arguments     = jsonencode(var.extra_arguments)
    extra_volumes       = jsonencode(var.extra_volumes)
    extra_volume_mounts = jsonencode(var.extra_volume_mounts)

    affinity             = jsonencode(var.affinity)
    tolerations          = jsonencode(var.tolerations)
    node_selector        = jsonencode(var.node_selector)
    pod_labels           = jsonencode(var.pod_labels)
    pod_annotations      = jsonencode(var.pod_annotations)
    pod_security_context = jsonencode(var.pod_security_context)
    custom_annotations   = jsonencode(var.custom_annotations)
    custom_labels        = jsonencode(var.custom_labels)

    pdb_enable          = var.pdb_enable
    pdb_max_unavailable = var.pdb_max_unavailable
    pdb_min_available   = var.pdb_min_available

    rules_default  = jsonencode(var.rules_default)
    rules_existing = var.rules_existing != null ? jsonencode(var.rules_existing) : "null"
    rules_custom   = jsonencode(var.rules_custom)
    rules_external = jsonencode(var.rules_external)
    rules_resource = jsonencode(var.rules_resource)
  }
}
