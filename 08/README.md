## Домашнее задание к занятию «Конфигурация приложений»

### Задание 1
Создать Deployment приложения и решить возникшую проблему с помощью ConfigMap. Добавить веб-страницу

  - Создать Deployment приложения, состоящего из контейнеров nginx и multitool.

      [deployment манифест](deployment.yaml)
  
  - Решить возникшую проблему с помощью ConfigMap.

    Проблема - это работа двух контейнеров на одно м и том же порту 80. Решать ее будем переопределив переменную окружения HTTP_PORT
    через ConfigMap.

     [ConfigMap манифест](conf_map.yaml)

  - Продемонстрировать, что pod стартовал и оба конейнера работают.

    ![изображение](https://github.com/user-attachments/assets/55a62a31-4dde-47db-a78b-7007942f15aa)

  
  - Сделать простую веб-страницу и подключить её к Nginx с помощью ConfigMap.

    Описываем содержимое страницы в ConfigMap.

  - Подключить Service и показать вывод curl или в браузере.
    [svc манифест](svc.yaml)

    ![изображение](https://github.com/user-attachments/assets/a888e596-e74d-4ce0-9fea-9948de8088eb)


    ![изображение](https://github.com/user-attachments/assets/7be42025-3dcb-4454-9e42-a0a78c82f182)

### Задание 2
 Создать приложение с вашей веб-страницей, доступной по HTTPS

   - Создать Deployment приложения, состоящего из Nginx.

 [deployment манифест](deploy-nginx.yaml)

   - Создать собственную веб-страницу и подключить её как ConfigMap к приложению.

     Описываем содержимое страницы в ConfigMap.
[ConfigMap манифест](conf_map_nginx.yaml)

   - Выпустить самоподписной сертификат SSL. Создать Secret для использования сертификата.
     C помощью утилиты openssl был выпушен сертификат. В итоге имеем два файла:

     ![изображение](https://github.com/user-attachments/assets/6137ec75-64c9-4133-ae01-b78d6224d0bf)

     Создаем secret типа tls и указываем файлы сертификата:

     ```kubectl create secret tls ssl-conf2 --cert=tls.crt --key=tls.key```

     Проверяем

     ![изображение](https://github.com/user-attachments/assets/2815d790-d1c2-41c3-9493-e91f4e30650e)

   - Создать Ingress и необходимый Service, подключить к нему SSL в вид. Продемонстировать доступ к приложению по HTTPS.

     [Ingress манифест](ingress.yaml)

     [Service манифест](svc-nginx.yaml)

     ![изображение](https://github.com/user-attachments/assets/d01e8cff-f4f4-462e-b444-1ea793df32b1)

   






