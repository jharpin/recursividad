defmodule Hotel do
  def total_dias([]), do: 0
  def total_dias([%{dias: d} | tail]), do: d + total_dias(tail)
end

IO.puts Hotel.total_dias([
  %{cliente: "Ana", dias: 3},
  %{cliente: "Luis", dias: 10}
]) # 8
