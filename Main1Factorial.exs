defmodule Recursividad_factorial do
  def factorial(n) when n >= 0 do
    factorial(n, 1)
  end

  def factorial(0, acc), do: acc
  def factorial(n, acc), do: factorial(n - 1, n * acc)
  def factorial(n, _) when n < 0, do: "Error: El factorial no está definido para números negativos"
end

IO.puts Recursividad_factorial.factorial(5)
