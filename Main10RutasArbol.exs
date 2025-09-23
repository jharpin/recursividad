defmodule Arbol do
  def rutas(nil, _suma, _camino), do: []

  # Caso hoja
  def rutas({:nodo, val, nil, nil}, suma, camino) do
    if val == suma do
      [Enum.reverse([val | camino])]
    else
      []
    end
  end

  # Caso recursivo
  def rutas({:nodo, val, izq, der}, suma, camino) do
    rutas(izq, suma - val, [val | camino]) ++
    rutas(der, suma - val, [val | camino])
  end
end

# Árbol de ejemplo
arbol = {:nodo, 5,
           {:nodo, 4, {:nodo, 11, {:nodo, 7, nil, nil}, {:nodo, 2, nil, nil}}, nil},
           {:nodo, 8, {:nodo, 13, nil, nil}, {:nodo, 4, nil, {:nodo, 1, nil, nil}}}
        }

IO.inspect Arbol.rutas(arbol, 22, [])
