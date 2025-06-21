defmodule Example do
  use Application
  alias UUID

  @y 10
  # ^ workaround for a const variable in Elixir

  def start(_type, _args) do
    Example.main()
    IO.puts(:"Hello World")
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    x = 5
    IO.puts(x)
    IO.puts(@y) #10
  end
end
