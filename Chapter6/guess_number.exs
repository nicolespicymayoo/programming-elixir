defmodule FindNumber do
  def find_midpoint(a, b) do
    div(a + b, 2)
  end

  def guess(answer, first..last) when not(answer in first..last) do
    IO.puts "dis is not a numba in the range"
  end 

  def guess(answer, first..last) when div(first + last, 2) == answer do
    midpoint = find_midpoint(first, last)
    IO.puts midpoint
  end

  def guess(answer, first..last) when div(first + last, 2) < answer do
    IO.puts "Is it #{midpoint = find_midpoint(first, last)}?" 
    guess(answer, midpoint..last)
  end

  def guess(answer, first..last) when div(first + last, 2) > answer do
    IO.puts "Is it #{midpoint = find_midpoint(first, last)}?"
    guess(answer, first..midpoint)
  end
end