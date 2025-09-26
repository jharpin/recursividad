defmodule Recursividad_permutaciones do
  def generar([]), do: [[]]

  def generar(lista) do
    generar_aux(lista, [])
  end

  defp generar_aux([], _acum), do: []
  defp generar_aux([x | xs], prev) do
    resto = prev ++ xs

    permutaciones_resto = generar(resto)

    con_x = agregar(x, permutaciones_resto)

    con_x ++ generar_aux(xs, prev ++ [x])
  end

  defp agregar(_x, []), do: []
  defp agregar(x, [head | tail]), do: [[x | head] | agregar(x, tail)]
end

IO.inspect(Recursividad_permutaciones.generar([1, 2, 3, 4]))
