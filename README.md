# AntiZapret
Обход блокировки Discord'а, Youtube'а, Steam'а, Twitch'а и др.

## Руководство
Скачайте репозиторий как ZIP архив, разархивируйте в отдельную папку.

Запустите **от имени администратора** то, что вам нужно:

## Запуск в виде приложения (одно на выбор):
- **`1_antizapret_general_v1.cmd`** - для обхода блокировки основных сайтов, файл list-general.txt
- **`1_antizapret_extended_v1.cmd`** - для обхода блокировки многих сайтов, файл list-extended.txt
- **`1_discord_v1.cmd`** - для обхода блокировки только Discord'а, файл list-discord.txt
- Если не работает версия v1 попробуйте v2

## Установка в виде службы antizapret (одну на выбор):
- **`2_service_antizapret_general_install_v1.cmd`** - для обхода блокировки основных сайтов, файл list-general.txt
- **`2_service_antizapret_extended_install_v1.cmd`** - для обхода блокировки многих сайтов, файл list-extended.txt
- **`2_service_discord_install_v1.cmd`** - для обхода блокировки только Discord'а, файл list-discord.txt
- **`2_service_goodbye_discord_install_v1.cmd`** - для обхода блокировки только Discord'а, если у вас уже установлена служба **goodbyedpi**. ВНИМАНИЕ: Первый раз goodbyedpi может вылететь - просто перезапустите устройство!
- Если не работает версия v1 попробуйте v2

## Удаление службы antizapret, ранее установленной выше
- **`3_service_remove.cmd`** - остановить и удалить службу antizapret.

## Не работает?
- Проверьте, запускаете ли вы файлы от имени администратора.
- Не работает служба? Проверьте, чтобы в пути до файла **не было пробелов** и русских символов. Также отключите программы, которые могут мешать созданию службы *(Антивирусы, клинеры с доп. защитой)*.
- Не работает вместе с VPN? Отключите функцию **TUN** (Tunneling) в настройках VPN.
- Не работает `2_service_goodbye_discord_install_v.cmd`? Удостовертесь, что служба goodbyedpi запущена и имеет название GoodbyeDPI. После снова запустите `2_service_goodbye_discord_install_v.cmd` и перезапустите устройство.
- Попробуйте обновить бинарники с оригинального репозитория.

### Дополнительные адреса заблокированных сайтов можно добавить в список list-general.txt (для `1_antizapret.cmd` и `2_service_antizapret_install.cmd`). После добавления, службу antizapret надо перезапустить

## Оригинальный репозиторий:
https://github.com/bol-van/zapret/tree/master/binaries/win64/zapret-winws
