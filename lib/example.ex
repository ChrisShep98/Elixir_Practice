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
    time = Time.new(16, 30, 0, 0)
    date = Date.new(2025, 1, 1)
    IO.inspect(date)


    integer_division = div(10, 2)
    IO.puts(integer_division)
  end
end
