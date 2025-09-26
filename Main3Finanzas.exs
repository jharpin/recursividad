defmodule Finanzas do
  def balance([]), do: 0
  def balance([head | tail]), do: head + balance(tail)
end

IO.puts Finanzas.balance([100, -50, 200])
