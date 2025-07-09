defmodule Membership do
  defstruct [:type, :price]
end


defmodule User do
  defstruct [:name, :membership]
end

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

    gold_membership = %Membership{type: :gold, price: 25}
    silver_membership = %Membership{type: :silver, price: 15}
    bronze_membership = %Membership{type: :bronze, price: 5}



    #list example:

    users = [
      %User{name: "Chris", membership: gold_membership},
      %User{name: "John", membership: silver_membership},
      %User{name: "Mike", membership: bronze_membership},
    ]

    Enum.each(users, fn %User{name: name, membership: membership} -> IO.puts("#{name} has a #{membership.type} which costs #{membership.price}.") end)

  end
end
