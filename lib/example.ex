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
    memberships = {:bronze, :silver }
    memberships = Tuple.append(memberships, :gold)
    IO.inspect(memberships)

    prices = {5, 10, 15}
    avg = Tuple.sum(prices) / tuple_size(prices)
    IO.puts(avg)


    IO.puts("Average price for #{elem(memberships, 0)} #{elem(memberships, 1)} is #{elem(memberships, 2)}")
    # ^ how to get the values from a tuple example


    user1 = {"Caleb", :gold}
    {name, membership} = user1
    # ^ better way to get values from tuples by destructing
    IO.puts("#{name} has a #{membership} membership")
    
  end
end
