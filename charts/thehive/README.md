# TheHive
TheHive is a scalable, open source and free Security Incident Response Platform designed to make life easier for SOCs, CSIRTs, CERTs and any information security practitioner dealing with security incidents that need to be investigated and acted upon swiftly.

TheHive supports different methods to store data, files, and indexes according to your needs. However, even for a standalone, production server, we strongly recommend using Apache Cassandra as a scalable and fault-tolerant database. Files and indexes storage can vary, depending on your target setup ; for standalone server, the local filesystem is suitable, while sereval options are possible in the case of a cluster configuration.

# Cortex
Cortex, an open source and free software, has been created by TheHive Project for this very purpose. Observables, such as IP and email addresses, URLs, domain names, files or hashes, can be analyzed one by one or in bulk mode using a Web interface. Analysts can also automate these operations thanks to the Cortex REST API. 

# Cassandra
Apache Cassandra is a highly scalable, high-performance distributed database designed to handle large amounts of data across many commodity servers, providing high availability with no single point of failure. It is a type of NoSQL database.

# Minio
MinIO is a high-performance, S3 compatible object store. It is built for
large scale AI/ML, data lake and database workloads. It runs on-prem and
on any cloud (public or private) and from the data center to the edge. MinIO
is software-defined and open source under GNU AGPL v3.

# Elasticsearch
Elasticsearch is a distributed, RESTful search and analytics engine capable of addressing a growing number of use cases. As the heart of the Elastic Stack, it centrally stores your data for lightning fast search, fine‑tuned relevancy, and powerful analytics that scale with ease.


## Prerequisites    
- Kubernetes 1.25+     
- Helm 3.1.0      
   

## Installing the Chart      
Clone this Repository       
```bash     
$ git clone https://github.com/itTrident/helm-charts.git      
```      


To install the chart with the release name `my-release`:      
```bash    
$ helm install my-release thehive/ --values thehive/values.yaml      
```      
The command deploys **TheHive** on the Kubernetes cluster in the default configuration. The [Parameters](#parameters) section lists the parameters that can be configured during installation.      

> **Tip**: List all releases using `helm list`       

## Uninstalling the Chart    

To uninstall/delete the `my-release` deployment:      

The command removes all the Kubernetes components associated with the chart and deletes the release.      

```bash     
$ helm delete my-release  
```    
## How to expose the application?
Here application has been exposed using each AWS Load Balancer for each application

- Cortex
```
<LoadBalancer_endpoint>:9001
```
- Minio
```
<LoadBalancer_endpoint>:9090
```

- TheHive
```
<LoadBalancer_endpoint>:9000
```
> **Info**: If you want to use AWS  `Single LoadBalancer` you can configure by yourself

## Steps to install Ingress controller and configure AWS Load Balancer

### Step 1:
Install the required Ingress controller using helm

### Step 2:
Create an [Ingress Yaml](https://aws.amazon.com/blogs/containers/exposing-kubernetes-applications-part-3-nginx-ingress-controller/) file and configure it for external access and deploy it

### Step 3:
Get your Ingress resource using the below command
```
Kubectl get ingress -n <Name_space>
```
Expose your application with their respective paths

Example:
```
http://a3f7eb93430dxxxxxxxxxxx-xxxxxxxx.us-east-1.elb.amazonaws.com/cortex
http://a3f7eb93430dxxxxxxxxxxx-xxxxxxxx.us-east-1.elb.amazonaws.com/minio
http://a3f7eb93430dxxxxxxxxxxx-xxxxxxxx.us-east-1.elb.amazonaws.com/thehive
```


# Parameters       

### Image parameters     
| Name | Description | Value |      
| --| -- | -- |      
| `image.repository` |  image repository | `string` |       
| `image.tag` |  image tag  | `string` |        
| `image.pullPolicy` |  image pull policy | `string` |       
  

### Service parameters
| Name | Description | Value |     
| --| -- | -- |     
| `service.type` | service type | `LoadBalancer`|     


### Lable parameters              

| Name | Description | Value |     
| --| -- | -- |    
| `app` | Define metadata app name | `string` |      
| `name` | Define lables name | `string` |     
