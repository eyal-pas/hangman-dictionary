defmodule Procs do
  def hello(count) do
    receive do
      {:crash, reason} ->
        IO.puts("Crashing because #{reason}")
        exit(reason)

      {:stop} ->
        IO.puts("Stopping")

      {:reset} ->
        IO.puts("Resetting")
        hello(0)

      {:add, n} ->
        IO.puts("#{count}: Adding #{n}")
        hello(count + n)

      msg ->
        IO.puts("#{count}:Hello #{inspect(msg)}")
        hello(count + 1)
    end
  end
end
