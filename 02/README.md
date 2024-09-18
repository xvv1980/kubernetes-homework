### Домашнее задание к занятию «Базовые объекты K8S»
## Задание 1
   - создать манифест для POD с образом gcr.io/kubernetes-e2e-test-images/echoserver:2.2

[манифест](pod-echo.yaml)
    

   - Подключиться локально к Pod с помощью kubectl port-forward и вывести значение (curl или в браузере).

   ``` kubectl port-forward pod/hello-world 3001:8080 ```

![изображение](https://github.com/user-attachments/assets/ef949075-416b-428a-83e0-e5834e800a2f)


## Задание 2


