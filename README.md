# my-project-Abhijit
this is for my local


# steps to implement promitheus and grafana 

+ need cluster 

+ need helm 


# install prometheus using helm 

$ kubectl create namespace prometheus

$ helm repo add prometheus-community https://prometheus-community.github.io/helm-charts -n prometheus 

$ helm repo update 

$ helm install prometheus-community/prometheus 

$ kubectl get pods -n prometheus

$ kubectl get svc -n prometheus

# expose prometheus service or edit 

$ kubectl expose svc prometheus-server --type=NodePort --target-port=9000 --name prometheus-server-ext

# now open prometheus server using service port 



# now add grafana repo 

$ kubectl create ns grafana 

$ helm repo add grafana https://grafana.github.io/helm-charts -n grafana 

$ helm repo update 

$ helm install grafana grafana/grafana 

-> copy the grafana token to geneate grafana password 

and paste on terminal ---> copy password

$ kubectl get pods -n grafana 

$ kubectl get svc -n grafana 


# now expose svc grafana or edit to the nodeport

$ kubectl expose svc grafana --type=NodePort --target-port=3000 --name grafana-ext -n grafana 

$ kubectl get svc -n grafana 

# now access port grafana svc

username --admin 

password ---paste hera password that you generated using token while instaling grafana throgh the helm 


# implement grafana with promitheus   open grafana 

- > Go to the data sources of > prometheus > paste prometheus running server link > save $ test


# creating dashboard for prometheus on grafana 

dashboard  > import >id(3662) default id to load  > scroll down  > choose prometheus and import to retrive data from prometheus 


# to display more deep matric we need to expose or edit "prometheus-kube-state-metrics" to getting more metrics whihch may be default or running costom application 

$ kubectl expose svc prometheus-kube-state-metrics --type=NodePort --target-port="running state svc port" --name prometheus-kube-state-ext anyname

and access it 

# Go  to the metrics and watch 

go to the cluster

# see configmap for kube-state-metric server yaml file  where specified rule for getting default metric of deployment,pod,replicas but those are default not applications metrics 

# to get application metrics we need to addnew rule for new scrap information  aor application and have to specify traget rule url where application are running e.g

scrape_configs: 
- job_name:
  static_config:
  - targets:
    - localhost: "url or port where application running" 
  
