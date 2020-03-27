# переключение namespace
sudo kubectl config set-context $(sudo kubectl config current-context) --namespace NAME_SPACE
# удаление pod используя label
sudo kubectl delete po -l creation_method=manual
# создаёт согласно файлу в определённом namespace
sudo kubectl create -f kubia-manual.yaml -n custom-namespace
#Переадресация локального сетевого порта на порт в модуле
kubectl port-forward kubia-manual 8888:8080
# обновляет ресурс тем, что указано в файле.
kubectl apply -f kubia-ingress-tls.yaml
#--generator=run-pod / v1 , который по- ручает команде kubectl создать модуль напрямую, без какого-либо контроллера репликации или аналогичного ему
kubectl run dnsutils --image=tutum/dnsutils --generator=run-pod/v1
# help
sudo kubectl explain pods.spec.volumes.nfs