### Домашнее задание к занятию «Базовые объекты K8S»
## Задание 1
   - создать манифест для POD с образом gcr.io/kubernetes-e2e-test-images/echoserver:2.2

[манифест](pod-echo.yaml)
    

   - Подключиться локально к Pod с помощью kubectl port-forward и вывести значение (curl или в браузере).

   ``` kubectl port-forward pod/hello-world 3001:8080 ```

![изображение](https://github.com/user-attachments/assets/ef949075-416b-428a-83e0-e5834e800a2f)


## Задание 2

  - Создать Pod netology-web с образом gcr.io/kubernetes-e2e-test-images/echoserver:2.2

[манифест](pod-web.yaml)

  - Создать Service с именем netology-svc и подключить к netology-web.

[манифест](svc-netology.yaml)

  - Подключиться локально к Service с помощью kubectl port-forward и вывести значение (curl или в браузере).

     ``` kubectl port-forward svc/netology-svc 3003:3002 ```

![изображение](https://github.com/user-attachments/assets/4404e385-55e7-4ee3-8dd8-35e3ef034cdf)

Выводы команд:

![изображение](https://github.com/user-attachments/assets/a318a0db-3752-4bec-8c38-6c7f86dd83a8)

