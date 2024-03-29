# Chart vitta-app

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| configMaps | object | `{}` |  |
| horizontalPodAutoscaler.enabled | bool | `false` |  |
| horizontalPodAutoscaler.maxReplicas | int | `2` |  |
| horizontalPodAutoscaler.minReplicas | int | `1` |  |
| horizontalPodAutoscaler.targetAverageCPUUtilization | int | `60` |  |
| imageCredentials | object | `{}` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0] | string | `"example.com"` |  |
| ingress.path | string | `"/"` |  |
| ingress.servicePort | string | `"http"` |  |
| ingress.tls[0].hosts[0] | string | `"example.com"` |  |
| nameOverride | string | `nil` |  |
| podDisruptionBudget.enabled | bool | `true` |  |
| podDisruptionBudget.minAvailable | int | `1` |  |
| pods.additionalContainers | list | `[]` |  |
| pods.affinity.antiAffinity.enabled | bool | `false` |  |
| pods.affinity.antiAffinity.topologyKey | string | `"kubernetes.io/hostname"` |  |
| pods.affinity.antiAffinity.type | string | `"hard"` |  |
| pods.affinity.rules | object | `{}` |  |
| pods.annotations | object | `{}` |  |
| pods.args | list | `[]` |  |
| pods.command | list | `[]` |  |
| pods.controller | string | `"deployment"` |  |
| pods.dnsPolicy | string | `"ClusterFirst"` |  |
| pods.env | list | `[]` |  |
| pods.envFrom | list | `[]` |  |
| pods.image.name | string | `nil` |  |
| pods.image.pullPolicy | string | `"IfNotPresent"` |  |
| pods.image.tag | string | `nil` |  |
| pods.imagePullSecrets | list | `[]` |  |
| pods.initContainers | list | `[]` |  |
| pods.labels | object | `{}` |  |
| pods.livenessProbe | object | `{}` |  |
| pods.nodeSelector | object | `{}` |  |
| pods.podAnnotations | object | `{}` |  |
| pods.podLabels | object | `{}` |  |
| pods.ports[0].containerPort | int | `8080` |  |
| pods.readinessProbe | object | `{}` |  |
| pods.replicas | string | `nil` |  |
| pods.resources | object | `{}` |  |
| pods.revisionHistoryLimit | int | `3` |  |
| pods.securityContext | object | `{}` |  |
| pods.strategy | object | `{}` |  |
| pods.tolerations | list | `[]` |  |
| pods.volumeMounts | list | `[]` |  |
| pods.volumes | list | `[]` |  |
| secrets | object | `{}` |  |
| service.enabled | bool | `true` |  |
| service.ports[0].name | string | `"http"` |  |
| service.ports[0].port | int | `80` |  |
| service.ports[0].protocol | string | `"TCP"` |  |
| service.ports[0].targetPort | int | `8080` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `"default"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
