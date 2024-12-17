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

$ kubectl expose svc prometheus-server --type=NodePort --target-Port=9000 --name prometheus-server-ext

# now open prometheus server using service port 



# now add grafana repo 

$ kubectl create ns grafana 

$ helm repo add grafana https://grafana.github.io/helm-charts -n grafana 

$ helm repo update 

$ helm install grafana grafana/grafana 

$ kubectl get pods -n grafana 

$ kubectl get svc -n grafana 


# now expose svc grafana or edit to the nodeport

$ kubectl expose svc grafana --type=NodePort --target-Port=3000 --name grafana-ext -n grafana 

$ kubectl get svc -n grafana 

# now access port grafana svc
