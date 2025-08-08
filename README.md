## Веб-интерфейс mod web4static для управления разными списками на Alpha прошивке KeneticOS 5.10 и более новых осях

![IMG_0671-round-corners](https://github.com/user-attachments/assets/8b0e44b3-bf50-464f-b389-04a7e8f8f29c)

## Установка

В `SSH` ввести команду для установки с наличием управления object group 
```shell
opkg update && opkg install wget-ssl && opkg install curl && curl -L -s "https://raw.githubusercontent.com/pegakmop/web4static/legacy/install.sh" > /tmp/install.sh && sh /tmp/install.sh
```

> [!NOTE]
> Веб-интерфейс доступен по адресу `http://<router_ip>:88` (например http://192.168.1.1:88)<br/>


Данный репозиторий это форк авторского [основного репозитория](https://github.com/spatiumstas/web4static)
