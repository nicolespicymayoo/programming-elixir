defmodule Factorial do 
  def of(0), do: 1
  def of(n), do: n * of(n-1)
end

defmodule FindNum do
  def guess(num, first..last = range) do
    half(first, last)
    

  end
end

