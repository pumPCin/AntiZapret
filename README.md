# AntiZapret
Обход блокировки Discord, Youtube, Steam, Twitch и др.

## Руководство
Скачайте архив https://github.com/pumPCin/AntiZapret/archive/refs/heads/main.zip , разархивируйте в отдельную папку.

Запустите **от имени администратора** то, что вам нужно:

## Запуск в виде приложения (одно на выбор):
- **`1_antizapret_general_v1.cmd`** - для обхода блокировки основных сайтов (list-general.txt)
- **`1_antizapret_extended_v1.cmd`** - для обхода блокировки многих сайтов (list-extended.txt)
- **`1_discord_v1.cmd`** - для обхода блокировки только Discord (list-discord.txt)
- Если не работает версия v1 попробуйте v2,v3

## Установка в виде службы antizapret (одну на выбор):
- **`2_service_antizapret_general_install_v1.cmd`** - для обхода блокировки основных сайтов (list-general.txt)
- **`2_service_antizapret_extended_install_v1.cmd`** - для обхода блокировки многих сайтов (list-extended.txt)
- **`2_service_discord_install_v1.cmd`** - для обхода блокировки только Discord (list-discord.txt)
- **`2_service_goodbye_discord_install_v1.cmd`** - для обхода блокировки только Discord, если у вас уже установлена служба **goodbyedpi**. ВНИМАНИЕ: Первый раз GoodbyeDPI может вылететь - просто перезапустите устройство!
- Если не работает версия v1 попробуйте v2,v3

## Удаление службы antizapret, ранее установленной выше
- **`3_service_remove.cmd`** - остановить и удалить службу antizapret.

## Для работы ChatGPT, Copilot, OpenAI; Spotify; Epic Games и др.
- Добавьте строки из файла **`hosts`** в свой файл **`hosts`** (расположен в **`C:\Windows\System32\drivers\etc`**) или перезапишите файл **`hosts`**.

## Не работает?
- Проверьте, запускаете ли вы файлы от имени администратора.
- Не работает служба? Проверьте, чтобы в пути до файла **не было пробелов** и русских символов. Также отключите программы, которые могут мешать созданию службы *(Антивирусы, клинеры с доп. защитой)*.
- Не работает вместе с VPN? Отключите функцию **TUN** (Tunneling) в настройках VPN.
- Не работает `2_service_goodbye_discord_install_v№.cmd`? Удостовертесь, что служба goodbyedpi запущена и имеет название GoodbyeDPI. После снова запустите `2_service_goodbye_discord_install_v№.cmd` и перезапустите устройство.
- Попробуйте обновить бинарники с оригинального репозитория.

### Дополнительные адреса заблокированных сайтов можно добавить в список list-general.txt для `1_antizapret_general_v№.cmd` и `2_service_antizapret_general_install_v№.cmd` или в список list-extended.txt для `1_antizapret_extended_v№.cmd` и `2_service_antizapret_extended_install_v№.cmd`. После добавления, службу antizapret надо перезапустить

## Оригинальный репозиторий:
https://github.com/bol-van/zapret/tree/master
