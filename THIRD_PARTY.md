# Списки блокировки и их лицензии

NullAds **не содержит и не распространяет** списки блокировки. В репозитории и в zip-архиве модуля
нет ни одного домена из чужих списков. Списки скачиваются на устройстве пользователя напрямую
из репозиториев авторов (или их официальных зеркал на jsDelivr), а итоговый hosts собирается
локально, для личного использования.

Используя списки, вы принимаете условия их авторов.

| Набор в NullAds | Источник | Лицензия |
|---|---|---|
| `light`, `normal`, `pro`, `proplus`, `ultimate` | [hagezi/dns-blocklists-legacy](https://github.com/hagezi/dns-blocklists-legacy), формат hosts | [GPL-3.0](https://github.com/hagezi/dns-blocklists-legacy/blob/main/LICENSE) |
| `xiaomi`, `tiktok`, `samsung` | [hagezi/dns-blocklists-legacy](https://github.com/hagezi/dns-blocklists-legacy), списки `native.*` | [GPL-3.0](https://github.com/hagezi/dns-blocklists-legacy/blob/main/LICENSE) |
| `steven` | [StevenBlack/hosts](https://github.com/StevenBlack/hosts) | [MIT](https://github.com/StevenBlack/hosts/blob/master/license.txt) |
| `gambling`, `nsfw`, `social`, `fakenews` | [StevenBlack/hosts](https://github.com/StevenBlack/hosts), `alternates/*-only` | MIT для сборки; исходные списки и их лицензии перечислены в [readme StevenBlack](https://github.com/StevenBlack/hosts#sources-of-hosts-data-unified-in-this-variant) |

Условия HaGeZi, включая отказ от ответственности, — в разделе
[Disclaimer](https://github.com/hagezi/dns-blocklists#disclaimer). Коротко: списки бесплатные,
без гарантий, за то, как вы их применяете, отвечаете вы.

## Если вы распространяете готовый hosts

Файл, который NullAds собирает на устройстве, — производная от этих списков. Если вы передаёте его
другим людям, соблюдайте лицензии: для данных HaGeZi нужно приложить текст GPL-3.0 и распространять
на тех же условиях, для StevenBlack — сохранить уведомление MIT.

## Поддержите авторов списков

NullAds — только загрузчик и интерфейс. Основная работа — у авторов списков:

- HaGeZi — [github.com/hagezi/dns-blocklists](https://github.com/hagezi/dns-blocklists)
- StevenBlack — [GitHub Sponsors](https://github.com/sponsors/StevenBlack)
