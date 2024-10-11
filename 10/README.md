## Домашнее задание к занятию «Helm»

### Задание 1. Подготовить Helm-чарт для приложения

  - Необходимо упаковать приложение в чарт для деплоя в разные окружения.

    Приложение упаковано в чарт [Каталог чарта](home-work-app)
    
  - Каждый компонент приложения деплоится отдельным deployment’ом или statefulset’ом.

    Имеется два deployment-а для backend и frontend сервиса

  - В переменных чарта измените образ приложения для изменения версии.

    В переменные чарта вынесены параметры service и настройки spec подов.
    
    [Переменные по умолчанию](values.yaml)
    
    [Переменые для запуска в окруж №1](home-work-app/app1-values.yaml)
    
    [Переменые для запуска в окруж №2](home-work-app/app2-values.yaml)

- созданы два namespace app1,app2

### Задание 2. Запустить две версии в разных неймспейсах
Подготовив чарт, необходимо его проверить. Запуститe несколько копий приложения.
    
- Одну версию в namespace=app1

![изображение](https://github.com/user-attachments/assets/5489d772-d14e-4a18-ac9e-57c1a47f1de2)

    
- Вторую версию в том же неймспейсе(изменена версия frontend и порты)

  ![изображение](https://github.com/user-attachments/assets/2b606f0c-37db-48fe-aafb-762b3ab91b94)

    
- Третью версию в namespace=app2.
    
  ![изображение](https://github.com/user-attachments/assets/321acd01-5e41-425a-bb92-edeeb322894f)

    
- Продемонстрируйте результат.

  ПОДЫ, СЕРВИСЫ

![изображение](https://github.com/user-attachments/assets/13743a30-1cd3-4db1-85be-0d8564bf00fa)



![изображение](https://github.com/user-attachments/assets/21b3b3d1-878b-4bc2-a48d-922bb6b50aee)

Вывод из приложения одного окружения

![изображение](https://github.com/user-attachments/assets/16587f98-9110-4a1a-a794-8d58a296ad43)

Вывод из приложения другого окружения

![изображение](https://github.com/user-attachments/assets/50dd8c11-3301-4ca3-b05a-a14e31e2f022)

Вывод из приложения третьего окружения

![изображение](https://github.com/user-attachments/assets/61eaf948-e36b-4d1f-b445-6ff3e0ef4a70)




