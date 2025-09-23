defmodule Tienda do
  def total([]), do: 0
  def total([%{cantidad: c} | tail]), do: c + total(tail)
end

IO.puts Tienda.total([
  %{producto: "Camisa", cantidad: 4},
  %{producto: "Pantalón", cantidad: 2}
]) # 6
