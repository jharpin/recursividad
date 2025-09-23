defmodule Potencia do
  def pow(_, 0), do: 1
  def pow(base, exp), do: base * pow(base, exp - 1)
end

IO.puts Potencia.pow(2, 5) # 32
