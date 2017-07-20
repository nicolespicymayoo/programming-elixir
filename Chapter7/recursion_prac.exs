defmodule Recursion do
  def print_multiple_times(msg, num_of_times) when num_of_times <= 1 do
    IO.puts msg
  end
  def print_multiple_times(msg, num_of_times) do
    IO.puts msg
    print_multiple_times(msg, num_of_times - 1)
  end

  def add_one([]), do: []
  def add_one([ head | tail ]), do: [ head+1 | add_one(tail)]

  def map([], func), do: []
  def map([ head | tail], func), do: [func.(head) | map(tail, func) ]

  def sum([], total), do: total
  def sum([ head | tail ], total), do: sum(tail, head+total)

end
