## Housing ##

## Как запусить ##


Установить зависимости для сервера

```
cd server

npm i
```

Установить зависимости для клиента

```
cd ..\client

npm i
```

Дальше в папке сервера изменить файл .env

```
PORT = 5000
DB_NAME = "Название БД в postgres" 
DB_USER = postgres
DB_PASSWORD = "Пароль от postgres" 
DB_HOST = localhost
DB_PORT = 5432
SECRET_KEY = random_key_123 
```

***Нужно заранее создать БД в postgres (просто создать новую пустую базу)*** 

Запусить сервер

```
cd ..\server

npm run dev
```

Перейти в папку клиен и запустить клиент

```
cd ..\client

npm start
```
