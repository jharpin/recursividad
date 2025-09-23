defmodule Main2Listas do

  def conteo([]), do: 0

  def conteo([_ | tail]), do: 1 + conteo(tail)
end

IO.puts(Main2Listas.conteo([12, 2, 4,5,8,3]))
