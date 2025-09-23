defmodule Permutaciones do
  def generar([]), do: [[]]
  def generar(lista) do
    for x <- lista,
        resto <- generar(lista -- [x]),
        do: [x | resto]
  end
end

IO.inspect Permutaciones.generar([1, 2, 3])
