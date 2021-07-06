# Keyoxide Web    

## Prerequisites    
- Kubernetes 1.12+     
- Helm 3.1.0      
- PV provisioner support in the underlying infrastructure     


## Installing the Chart      
Clone this Repository       
```bash     
$ git clone https://github.com/itTrident/helm-charts.git      
```      


To install the chart with the release name `my-release`:      
```bash    
$ helm install my-release keyoxide/ --values keyoxide/values.yaml      
```      
The command deploys **Keyoxide** on the Kubernetes cluster in the default configuration. The [Parameters](#parameters) section lists the parameters that can be configured during installation.      

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
| `replicaCount` | Number of Keyoxide replicas to deploy | `1` |     
| `nameOverride` | String to partially override common.names.fullname | `nil` |      
| `fullnameOverride` | String to fully override common.names.fullname | `""` |      
| `imagePullSecrets` | Global Docker registry secret names as an array | `[]` |      
| `podAnnotations` | Annotations for Keyoxide pods | `{}` |      
| `podSecurityContext` | podSecurityContext for Keyoxide pods | `{}` |      
| `nodeSelector` |  Specify the Node labels to deploy Keyoxide pods | `{}` |       


### Keyoxide Image parameters     
| Name | Description | Value |      
| --| -- | -- |      
| `image.repository` | Keyoxide image repository | `keyoxide/keyoxide` |       
| `image.tag` | Keyoxide image tag  | `11` |        
| `image.pullPolicy` | Keyoxide image pull policy | `IfNotPresent` |       


### Keyoxide ServiceAccount parameters     
| Name | Description | Value |     
| --| -- | -- |      
| `serviceAccount.create` | Specifies whether a ServiceAccount should be created | `true`  |     
| `serviceAccount.name` | The name of the ServiceAccount to use. | `""`  |     
| `serviceAccount.annotations` | Additional custom annotations for the ServiceAccount | `{}` |     


### Keyoxide Service and Ingress parameters
| Name | Description | Value |     
| --| -- | -- |     
| `service.type` | Keyoxide service type | `LoadBalancer`|     
| `service.port` | Keyoxide service port | `80` |      
| `ingress.enabled` | Add extra ingress rules to the | `false` |      
| `ingress.annotations` | Add annotations for Ingress | `{}` |    
| `ingress.hosts.host` | Define Ingress Hostname | `chart-example.local` |   
| `ingress.hosts.paths` | Define Ingress Host path | `[]` |   
| `ingress.tls` | Add Ingress TLS options | `[]` |      

### Keyoxide AutoScaling parameters     

| Name | Description | Value |     
| --| -- | -- |    
| `autoscaling.enabled` | To enable AutoScaling for Keyoxide | `false` |     
| `autoscaling.minReplicas` | Define Minimum Replica count for Keyoxide | `1` |      
| `autoscaling.maxReplicas` | Define Maximum Replica count for Keyoxide | `100` |      
| `autoscaling.targetCPUUtilizationPercentage` | Define CPUUtilization as a criteria to AutoScale Keyoxide  | `80` |    



### Keyoxide Probe parameters              

| Name | Description | Value |     
| --| -- | -- |    
| `probe.periodseconds` | Define livenessProbe  and readinessProbe periodSeconds | `20` |      
| `probe.initialdelayseconds` | Define livenessProbe  and readinessProbe initialDelaySeconds | `20` |     
