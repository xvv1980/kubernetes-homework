### Домашнее задание к занятию «Сетевое взаимодействие в K8S. Часть 2»
## Задание 1
  - Создать Deployment приложения frontend из образа nginx с количеством реплик 3 шт.

[deployment манифест](deploy-front.yaml)


  - Создать Deployment приложения backend из образа multitool.
    
[deployment манифест](deploy-back.yaml)

  
  - Добавить Service, которые обеспечат доступ к обоим приложениям внутри кластера.

[service для backend манифест](svc-back.yaml)

[service для frontend манифест](svc-front.yaml)

  - Продемонстрировать, что приложения видят друг друга с помощью Service.
 
![изображение](https://github.com/user-attachments/assets/36c1d100-fcb0-4a7f-9ed5-346339c573f9)


## Задание 2
 
  - Включить Ingress-controller в MicroK8S.

    ![изображение](https://github.com/user-attachments/assets/d76606a0-8ef1-4bb4-8d83-186a2d5e9a63)

  - Создать Ingress, обеспечивающий доступ снаружи по IP-адресу кластера MicroK8S так, чтобы при запросе только по адресу открывался frontend а при добавлении /api - backend.

[ingress манифест](ingress.yaml)
     
