# Prometheus Adapter

Installs the [Prometheus Adapter](https://github.com/kubernetes-sigs/prometheus-adapter) for the Custom Metrics API. Custom metrics are used in Kubernetes by [Horizontal Pod Autoscalers](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) to scale workloads based upon your own metric pulled from an external metrics provider like Prometheus.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.prometheus_adapter](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_affinity"></a> [affinity](#input\_affinity) | Affinity for the pods | `map(any)` | `{}` | no |
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | Helm chart name to provision | `string` | `"prometheus-adapter"` | no |
| <a name="input_chart_namespace"></a> [chart\_namespace](#input\_chart\_namespace) | Namespace to install the chart into | `string` | `"default"` | no |
| <a name="input_chart_repository"></a> [chart\_repository](#input\_chart\_repository) | Helm repository for the chart | `string` | `"https://prometheus-community.github.io/helm-charts"` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of Chart to install. Set to empty to install the latest version | `string` | `""` | no |
| <a name="input_custom_annotations"></a> [custom\_annotations](#input\_custom\_annotations) | Additional annotations to add to all resources | `map(any)` | `{}` | no |
| <a name="input_custom_labels"></a> [custom\_labels](#input\_custom\_labels) | Additional labels to add to all resources | `map(any)` | `{}` | no |
| <a name="input_extra_arguments"></a> [extra\_arguments](#input\_extra\_arguments) | Extra arguments for the container | `list(any)` | `[]` | no |
| <a name="input_extra_volume_mounts"></a> [extra\_volume\_mounts](#input\_extra\_volume\_mounts) | Extra volume mounts for the adapter container | `list(any)` | `[]` | no |
| <a name="input_extra_volumes"></a> [extra\_volumes](#input\_extra\_volumes) | Extra volumes for the adapter | `list(any)` | `[]` | no |
| <a name="input_force_update"></a> [force\_update](#input\_force\_update) | Force resource update through delete/recreate if needed. | `bool` | `false` | no |
| <a name="input_host_network_enabled"></a> [host\_network\_enabled](#input\_host\_network\_enabled) | Specifies if prometheus-adapter should be started in hostNetwork mode. | `bool` | `false` | no |
| <a name="input_image"></a> [image](#input\_image) | Docker image for the Prometheus Adapter | `string` | `"k8s.gcr.io/prometheus-adapter/prometheus-adapter"` | no |
| <a name="input_log_level"></a> [log\_level](#input\_log\_level) | Numerical log level for the adapter | `number` | `4` | no |
| <a name="input_max_history"></a> [max\_history](#input\_max\_history) | Max History for Helm | `number` | `20` | no |
| <a name="input_node_selector"></a> [node\_selector](#input\_node\_selector) | nodeSelector for the pod | `map(any)` | `{}` | no |
| <a name="input_pdb_enable"></a> [pdb\_enable](#input\_pdb\_enable) | Enable pod disruption budget | `bool` | `true` | no |
| <a name="input_pdb_max_unavailable"></a> [pdb\_max\_unavailable](#input\_pdb\_max\_unavailable) | Max unavailable pods | `string` | `""` | no |
| <a name="input_pdb_min_available"></a> [pdb\_min\_available](#input\_pdb\_min\_available) | Min available pods | `number` | `1` | no |
| <a name="input_pod_annotations"></a> [pod\_annotations](#input\_pod\_annotations) | Pod annotations | `map(any)` | `{}` | no |
| <a name="input_pod_labels"></a> [pod\_labels](#input\_pod\_labels) | Pod labels | `map(any)` | `{}` | no |
| <a name="input_pod_security_context"></a> [pod\_security\_context](#input\_pod\_security\_context) | securityContext for the pod | `map(any)` | <pre>{<br>  "fsGroup": 10001<br>}</pre> | no |
| <a name="input_priority_class_name"></a> [priority\_class\_name](#input\_priority\_class\_name) | Pod Priority Class name | `string` | `""` | no |
| <a name="input_prometheus_port"></a> [prometheus\_port](#input\_prometheus\_port) | Prometheus port | `number` | `9090` | no |
| <a name="input_prometheus_url"></a> [prometheus\_url](#input\_prometheus\_url) | Address for Prometheus | `string` | `"http://prometheus.default.svc"` | no |
| <a name="input_psp_enable"></a> [psp\_enable](#input\_psp\_enable) | Enable the use of pod security policies | `bool` | `true` | no |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | Helm release name for Prometheus | `string` | `"prometheus-adapter"` | no |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | Number of replicas | `number` | `1` | no |
| <a name="input_resources"></a> [resources](#input\_resources) | Resources for the pod | `map(any)` | `{}` | no |
| <a name="input_rules_custom"></a> [rules\_custom](#input\_rules\_custom) | Custom metrics rules | `list(any)` | `[]` | no |
| <a name="input_rules_default"></a> [rules\_default](#input\_rules\_default) | Use the default rules from the chart | `bool` | `true` | no |
| <a name="input_rules_existing"></a> [rules\_existing](#input\_rules\_existing) | ConfigMap containing existing rules | `any` | `null` | no |
| <a name="input_rules_external"></a> [rules\_external](#input\_rules\_external) | External metrics rules | `list(any)` | `[]` | no |
| <a name="input_rules_resource"></a> [rules\_resource](#input\_rules\_resource) | Custom resource rules | `map(any)` | `{}` | no |
| <a name="input_service_account_annotations"></a> [service\_account\_annotations](#input\_service\_account\_annotations) | Service Account Annotations | `map(any)` | `{}` | no |
| <a name="input_service_annotations"></a> [service\_annotations](#input\_service\_annotations) | Service Annotations | `map(any)` | `{}` | no |
| <a name="input_service_port"></a> [service\_port](#input\_service\_port) | Service port | `string` | `"443"` | no |
| <a name="input_service_type"></a> [service\_type](#input\_service\_type) | Service Type | `string` | `"ClusterIP"` | no |
| <a name="input_tag"></a> [tag](#input\_tag) | Docker Image tag for the Prometheus Adapter | `string` | `"v0.9.1"` | no |
| <a name="input_tolerations"></a> [tolerations](#input\_tolerations) | Tolerations for the pod | `list(any)` | `[]` | no |

## Outputs

No outputs.
