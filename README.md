# Elixir_Telegram_Bot_Demo
A demo for using Elixir to send a Telegram message/announcement via a Bot.

### How To
1. Have Erlang and Elixir installed (Elixir should be version 1.15)
2. Clone this repo
3. Put your Telegram Bot token and Channel ID in `.env`
3. In bash run `mix deps.get`
4. In bash run `iex -S mix`
5. In the iex terminal run `TelegramBot.test_announcement()`
6. The Bot should send an announcement in your Telegram channel