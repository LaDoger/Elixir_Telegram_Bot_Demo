defmodule TelegramBot do
  @api_url "https://api.telegram.org/bot"

  def send_message(token, chat_id, text) do
    url = "#{@api_url}#{token}/sendMessage"
    body = Poison.encode!(%{chat_id: chat_id, text: text})
    headers = [{"Content-Type", "application/json"}]

    case HTTPoison.post(url, body, headers) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.decode!(body)}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body}} ->
        {:error, body}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, reason}
    end
  end

  def test_announcement do
    # Load environment variables from `.env`
    Dotenv.load()

    # Get Telegram Bot Token created from https://t.me/BotFather
    telegram_bot_token = System.get_env("TELEGRAM_BOT_TOKEN")

    # If your Telegram Channel URL is https://t.me/doge, then CHANNEL_ID = '@doge'
    channel_id = System.get_env("CHANNEL_ID")

    # What you want the bot to announce
    message = "This message was sent using Elixir!"

    send_message(telegram_bot_token, channel_id, message)
  end

end
