defmodule Example do
  use Application
  alias UUID

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def sum_and_average(numbers) do
    sum = Enum.sum(numbers)
    average = sum / Enum.count(numbers)
    {sum, average}
  end

  def print_numbers(numbers) do
    numbers |> Enum.join(" ") |> IO.puts()
  end

  def main do
    numbers = [1, 2, 3, 4, 5]
    Enum.each(numbers, fn num -> IO.puts(num) end)

    new_numbers = ["1", "2", "3", "4", "5"]
    result = Enum.map(new_numbers, &String.to_integer/1)
    print_numbers(result)
    IO.inspect(sum_and_average(result))


  end
end
