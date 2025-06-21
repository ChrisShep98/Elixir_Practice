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
    x = 5
    # IO.puts(x)
    IO.puts(@y) #10
    IO.puts(:hello)
    name = "Chris"
    status = Enum.random([:gold, :silver, :bronze])

    if status === :gold do
      IO.puts("#{name} has a status of gold!")
    else
      IO.puts("#{name} does not have a status of gold")
    end
  end
end
