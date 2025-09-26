defmodule Arbol do
  def rutas(nil, _suma, _camino), do: []

  def rutas({:nodo, val, izq, der}, suma, camino) do
    nuevo_camino = camino ++ [val]  
    cond do
      val == suma ->
        [nuevo_camino] ++
        rutas(izq, suma - val, nuevo_camino) ++
        rutas(der, suma - val, nuevo_camino)

      true ->
        rutas(izq, suma - val, nuevo_camino) ++
        rutas(der, suma - val, nuevo_camino)
    end
  end
end

arbol = {:nodo, 10,
           {:nodo, 5,
             {:nodo, 3, {:nodo, 2, nil, nil}, nil},
             {:nodo, 7, nil, nil}
           },
           {:nodo, 12,
             nil,
             {:nodo, 15, nil, nil}
           }
        }

IO.inspect Arbol.rutas(arbol, 22, []), charlists: :as_lists
