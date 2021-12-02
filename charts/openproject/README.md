# OpenProject

## Prerequisites
- Kubernetes 1.12+
- Helm 3.1.0
- PV provisioner support in the underlying infrastructure


## Installing the Chart
Clone this Repository 
```bash
$ git clone url
```


To install the chart with the release name `my-release`:
```bash
$ helm install my-release openproject/ --values openproject/values.yaml 
```
The command deploys **OpenProject** on the Kubernetes cluster in the default configuration. The [Parameters](#parameters) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

The command removes all the Kubernetes components associated with the chart and deletes the release.

```bash
$ helm delete my-release
```
## Parameters

### Common parameters
| Name | Description | Value |
| --| -- | -- |
| `replicaCount` | Number of OpenProject replicas to deploy | `1` |
| `nameOverride` | String to partially override common.names.fullname | `nil` |
| `fullnameOverride` | String to fully override common.names.fullname | `""` |
| `imagePullSecrets` | Global Docker registry secret names as an array | `[]` |
| `podAnnotations` | Annotations for OpenProject pods | `{}` |
| `podSecurityContext` | podSecurityContext for OpenProject pods | `{}` |
| `nodeSelector` |  Specify the Node labels to deploy OpenProject pods | `{}` |


### OpenProject Image parameters
| Name | Description | Value |
| --| -- | -- |
| `image.repository` | OpenProject image repository | openproject/community` |
| `image.tag` | OpenProject image tag  | `11` |
| `image.pullPolicy` | OpenProject image pull policy | `IfNotPresent` |


### OpenProject ServiceAccount parameters
| Name | Description | Value |
| --| -- | -- |
| `serviceAccount.create` | Specifies whether a ServiceAccount should be created | `true`  |
| `serviceAccount.name` | The name of the ServiceAccount to use. | `""`  |
| `serviceAccount.annotations` | Additional custom annotations for the ServiceAccount | `{}` |


### OpenProject Service and Ingress parameters
| Name | Description | Value |
| --| -- | -- |
| `service.type` | OpenProject service type | `LoadBalancer`|
| `service.port` | OpenProject service port | `80` |
| `ingress.enabled` | Add extra ingress rules to the | `false` |
| `ingress.annotations` | Add annotations for Ingress | `{}` |
| `ingress.hosts.host` | Define Ingress Hostname | `chart-example.local` |
| `ingress.hosts.paths` | Define Ingress Host path | `[]` |
| `ingress.tls` | Add Ingress TLS options | `[]` |

### OpenProject AutoScaling parameters

| Name | Description | Value |
| --| -- | -- |
| `autoscaling.enabled` | To enable AutoScaling for OpenProject | `false` |
| `autoscaling.minReplicas` | Define Minimum Replica count for OpenProject | `1` | 
| `autoscaling.maxReplicas` | Define Maximum Replica count for OpenProject | `100` | 
| `autoscaling.targetCPUUtilizationPercentage` | Define CPUUtilization as a criteria to AutoScale OpenProject  | `80` | 

### OpenProject PersistentVolume parameters

| Name | Description | Value |
| --| -- | -- |
| `persistence.enabled` | To enable PersistentVolume for OpenProject Pod | `true` | 
| `persistence.accessMode` | PersistentVolume AccessMode for OpenProject Pod | `ReadWriteOnce` | 
| `persistence.storageClassName` | PersistentVolume StorageClassName for OpenProject Pod | `local-storage` | 
| `persistence.size` | PersistentVolume Storage Size | `30Gi` |

### OpenProject PostgreSQL DataBase parameters

| Name | Description | Value |
| --| -- | -- |
| `postgresql.persistence.` | To enable PersistentVolume for PostgreSQL Pod | `false` | 
| `postgresql.persistence.` | PersistentVolume Storage Size | `15G` | 
| `postgresql.postgresqlPassword` | PostgreSQL DataBase Password | `superSecrectPassword` | 
| `postgresql.postgresqlDatabase` | PostgreSQL DataBase Name | `openproject` | 


