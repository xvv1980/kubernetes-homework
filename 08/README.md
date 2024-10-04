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





