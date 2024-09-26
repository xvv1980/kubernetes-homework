### Домашнее задание к занятию «Запуск приложений в K8S»
## Задание 1
  - Создать Deployment приложения, состоящего из двух контейнеров — nginx и multitool. Решить возникшую ошибку.

[deployment манифест](deployment.yaml)

<b> Проблема решена путем добавления переменной окружения HTTP_PORT в контейнер с multitool. </b>

  - Запуск с 1-й репликой:
    
  ![изображение](https://github.com/user-attachments/assets/8a8f4153-540a-4f13-94b1-c4168b9cbef4)

  
  - После запуска увеличить количество реплик работающего приложения до 2.

![изображение](https://github.com/user-attachments/assets/6c68b96b-5d5c-4232-aef1-fd8d8adc9ab1)

Продемонстрировать количество подов до и после масштабирования.

  - Создать Service, который обеспечит доступ до реплик приложений из п.1.

[service манифест](svc-test.yaml)

![изображение](https://github.com/user-attachments/assets/900bae58-b96a-4b5c-b827-f5bf535b2ade)

  - Создать отдельный Pod с приложением multitool и убедиться с помощью curl, что из пода есть доступ до приложений из п.1.

[pod манифест](pod-multitool.yaml)

![изображение](https://github.com/user-attachments/assets/5e19ccf0-60d1-4f07-b0a5-ff4c3801fedb)

![изображение](https://github.com/user-attachments/assets/23997f7c-5ba3-46db-8982-13e08aca9329)


## Задание 2
  - Создать Deployment и обеспечить старт основного контейнера при выполнении условий

[deployment манифест](deploy-with-init.yaml)

  - Убедиться, что nginx не стартует. В качестве Init-контейнера взять busybox.
  ![изображение](https://github.com/user-attachments/assets/f13aa441-acb0-4fb0-add7-896b2d75599f)
  
  - Создать и запустить Service. Убедиться, что Init запустился.
![изображение](https://github.com/user-attachments/assets/6457239d-0fe9-4534-9a0f-3f9f3e67dce6)




Продемонстрировать состояние пода до и после запуска сервиса.



