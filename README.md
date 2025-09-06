# AntiZapret
Обход блокировки Discord, Youtube, Steam, Twitch и др.

## Руководство
Скачайте архив https://github.com/pumPCin/AntiZapret/archive/refs/heads/main.zip , разархивируйте в отдельную папку.

Запустите **от имени администратора** то, что вам нужно:

## Запуск в виде приложения (одно на выбор):
- **`1_antizapret_auto_v1.cmd`** - для обхода блокировки сайтов, список создается автоматически в файле autohostlist.txt
- **`1_antizapret_general_v1.cmd`** - для обхода блокировки сайтов из списка в файле list-general.txt
- **`1_antizapret_extended_v1.cmd`** - для обхода блокировки сайтов из списка в файле list-extended.txt
- Если не работает версия auto v1 попробуйте general/extended v1,v2,v3,v4

## Установка в виде службы antizapret (одну на выбор):
- **`1_service_antizapret_auto_install_v1.cmd`** - для обхода блокировки сайтов, список создается автоматически в файле autohostlist.txt
- **`2_service_antizapret_general_install_v1.cmd`** - для обхода блокировки сайтов из списка в файле list-general.txt
- **`2_service_antizapret_extended_install_v1.cmd`** - для обхода блокировки сайтов из списка в файле list-extended.txt
- Если не работает версия auto v1 попробуйте general/extended v1,v2,v3,v4

## Удаление службы antizapret (ранее установленной выше)
- **`3_service_remove.cmd`** - остановить и удалить службу antizapret.

## Для работы ChatGPT, Copilot, OpenAI; Spotify; Epic Games и др.
- Добавьте строки из файла **`hosts`** в свой файл **`hosts`** (расположен в **`C:\Windows\System32\drivers\etc`**) или перезапишите файл **`hosts`** целиком.

## Не работает?
- Проверьте, запускаете ли вы файлы от имени администратора.
- Не работает служба? Проверьте, чтобы в пути до файла **не было пробелов** и русских символов. Также отключите программы, которые могут мешать созданию службы *(Антивирусы, клинеры с доп. защитой)*.
- Не работает вместе с VPN? Отключите функцию **TUN** (Tunneling) в настройках VPN.
- Попробуйте обновить бинарники с оригинального репозитория.

## Дополнительные адреса заблокированных сайтов
- Можно добавить дополнительные адреса в список list-general.txt или list-extended.txt. После добавления, службу antizapret надо перезапустить.

## Альтернатива
https://github.com/bol-van/zapret-win-bundle
