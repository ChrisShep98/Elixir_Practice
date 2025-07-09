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
    even_numbers = Enum.filter([1, 2, 3, 4, 5, 6], fn x -> rem(x, 2) == 0 end)
    IO.inspect(even_numbers)  # [2, 4, 6]


  end
end
