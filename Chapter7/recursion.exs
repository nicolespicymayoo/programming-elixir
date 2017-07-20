defmodule Recursion do 
  def square([]), do: []
  def square([ head | tail ]) do
    [ head * head | square(tail) ]
  end  

  def map([], _func), do: []
  def map([head | tail], func) do
    [ func.(head) | map(tail, func) ]
  end

  def sum([]), do: 0
  def sum([ head | tail ]) do 
    head + sum(tail)
  end

  def sum2(list), do: _sum2(0, list)

  defp _sum2(accumulator, []), do: accumulator
  defp _sum2(accumulator, [ head | tail ]) do
    new_accumulator = head + accumulator
    _sum2( new_accumulator, tail)
  end

  def mapsum([], func), do: 0
  def mapsum([ head | tail ], func) do
    func.(head) + mapsum(tail, func)
  end

  def max(list), do: _max(0, list)
  defp _max(current_max, []), do: current_max
  defp _max(current_max, [ head | tail ]) when head > current_max do
    new_max = head
    _max(new_max, tail)
  end
  defp _max(current_max, [ head | tail ]) when head < current_max do
    _max(current_max, tail)
  end
end