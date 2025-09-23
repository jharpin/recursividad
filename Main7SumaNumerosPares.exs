defmodule Pares do
  def suma([]), do: 0
  def suma([head | tail]) when rem(head, 2) == 0, do: head + suma(tail)
  def suma([_ | tail]), do: suma(tail)
end

IO.puts Pares.suma([1, 2, 3, 4, 6, 8]) # 12
