defmodule Matriz do
  def suma([]), do: 0
  def suma([fila | resto]), do: suma_fila(fila) + suma(resto)

  defp suma_fila([]), do: 0
  defp suma_fila([x | xs]), do: x + suma_fila(xs)
end

IO.puts Matriz.suma([[1, 2], [3, 4], [5]]) # 15
