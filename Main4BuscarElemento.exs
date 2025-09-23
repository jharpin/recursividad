defmodule Busqueda do
  def existe?(_, []), do: false
  def existe?(x, [x | _]), do: true
  def existe?(x, [_ | tail]), do: existe?(x, tail)
end

IO.puts Busqueda.existe?(2, [1, 2, 3, 5, 7]) # true
IO.puts Busqueda.existe?(9, [1, 2, 3, 5, 7]) # false
