## Домашнее задание к занятию «Хранение в K8s. Часть 1»

### Задание 1
Создать Deployment приложения, состоящего из двух контейнеров и обменивающихся данными.

 - Создать Deployment приложения, состоящего из контейнеров busybox и multitool.

   [deployment манифест](deploy-1.yaml)
   
 - Сделать так, чтобы busybox писал каждые пять секунд в некий файл в общей директории.

   ``` command: ['sh', '-c', 'while true; do echo "test" >> /test-volume/output.txt; sleep 5; done;']```

 - Обеспечить возможность чтения файла контейнером multitool.

   ```
   Для этих целей будем использовать локальный volume типа emtyDir
       volumes:
      - name: volume
        emptyDir: {}
   ```
   

 - Продемонстрировать, что multitool может читать файл, который периодоически обновляется.
   Подлючаемся на каждый контейнер и смотрим файл output.txt .

   ![изображение](https://github.com/user-attachments/assets/f4dbeafd-1be2-4400-a237-3029c87d145f)

 
