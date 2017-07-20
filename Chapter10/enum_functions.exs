defmodule MyEnum do
  def all([], func), do: true
  def all([head | tail], func) do
    func.(head) and all(tail, func)
  end

  def each1([], func), do: []
  def each1([head | tail], func) do 
    [func.(head) | each1(tail, func) ]
  end
  def each1(_), do: "you must insert a list and a function"

  def filter([], func), do: []
  def filter([head | tail], func) do
    if func.(head) == true do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end

  end

end