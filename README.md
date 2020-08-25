# Графическая утилита для работы с Рутокенами в Linux и MacOS
Утилита предназначена для устройств семейства Рутокен ЭЦП. 
Её возможности:
1. Просмотр информации о Рутокене
2. Просмотр объектов, хранящихся на токене или смарт-карте
3. Генерация и удаление ключевых пар, импорт ключей и сертификатов в формате PKCS#12
4. Создание заявок на сертификат в формате PKCS#10 (за исключением создания заявок для ГОСТ ключей на MacOS)
5. Форматирование устройств
6. Смена PIN-кодов Администратора и Пользователя
7. Разблокирование PIN-кода Пользователя

# Загрузка и запуск
```sh
git clone https://github.com/AktivCo/rutoken-linux-gui-manager --recursive
```
Утилита автоматически проверит наличие необходимых пакетов для работы, и при необходимости попросит их установить. **Установка требует наличия прав супер пользователя**, поэтому утилита запросит пароль администратора во время установки обновлений.

**Для пользователей Astra Linux создан специальный настройщик**, создающий ярлык для запуска приложения без терминала. Просто запустите *token-assistent.installer* и ярлык автоматически появится. 

В остальных операционных системах запуск можно производить двойным щелчком по утилите *token-assistent.run*.

# MacOS
Перед началом работы установите последнюю версию [brew](https://brew.sh). Также нужно вручную поставить нуные пакеты для работы
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install python3 openssl libp11 opensc pcsc-lite wget pstree
```

В настоящий момент MacOS поддерживает настройку только локальной аутнетификации по токену. После генерации сертификата для локальной аутентификации и настройки локальной аутентификации необходимо перевоткнуть токен
