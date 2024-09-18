### Домашнее задание к занятию «Kubernetes. Причины появления. Команда kubectl»
## Задание 1. Установка MicroK8S
   - Создана виртуальная машина в YandexCloud
   - Выполнены шаги инcтрукции по установки microk8s.
   - включен dashboard

![изображение](https://github.com/user-attachments/assets/73d8b515-41f9-4d16-9221-c32150768358)

   - добавлен внешний ip виртуалки в  /var/snap/microk8s/current/certs/csr.conf.template
   - обновлен сертификат

![изображение](https://github.com/user-attachments/assets/3f13d592-ebfe-463a-a6dd-cb2e7b699f5f)

 ## Задание 2. Установка kubectl 
   - на домашней машине установлен kubectl

![изображение](https://github.com/user-attachments/assets/49b9bbf0-bf2e-4556-833f-abd715e15144)

    
   - создан файл ~/.kube/config
    
```
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: XXXX
    server: <b>https://84.201.149.49:16443<\b>
  name: microk8s-cluster
contexts:
- context:
    cluster: microk8s-cluster
    user: admin
  name: microk8s
current-context: microk8s
kind: Config
preferences: {}
users:
- name: admin
  user:
    client-certificate-data: XXXXXX
    client-key-data: XXXXX
```   
   - вывод node
![изображение](https://github.com/user-attachments/assets/517e61b4-449b-4731-9b7f-e95ff6abf928)

   - проброшен порт к дашборду
``` kubectl port-forward -n kube-system service/kubernetes-dashboard 10443:443 ```

   - сгенерирован токен для доступа к дашборду
``` kubectl create token default ```

![изображение](https://github.com/user-attachments/assets/1526964b-673c-4474-b9e7-ec6a49d17384)

![изображение](https://github.com/user-attachments/assets/79eb02c8-409e-4d8e-8b4a-406f59c96a35)

