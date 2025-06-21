defmodule Example do
  use Application
  def start(_type, _args) do
    IO.puts(:"Hello World")
    Supervisor.start_link([], strategy: :one_for_one)
  end
end
