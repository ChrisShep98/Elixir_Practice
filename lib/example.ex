defmodule Example do
  use Application
  alias UUID

  @y 10
  # ^ workaround for a const variable in Elixir

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do

    correct = :rand.uniform(11) - 1
    IO.puts(correct)
    guess = IO.gets("Guess a number between 0 and 10: ") |> String.trim() |> Integer.parse()
    IO.inspect(guess)

    case guess do
      {result, ""} -> IO.puts("parse successful #{result}")
      {result, other} -> IO.puts("parse partially successful #{result} and #{other}")
      :error -> IO.puts("something went wrong")
    end

  end
end
