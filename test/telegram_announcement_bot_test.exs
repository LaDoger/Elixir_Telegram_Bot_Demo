defmodule TelegramAnnouncementBotTest do
  use ExUnit.Case
  doctest TelegramAnnouncementBot

  test "greets the world" do
    assert TelegramAnnouncementBot.hello() == :world
  end
end
