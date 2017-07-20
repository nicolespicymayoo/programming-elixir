defmodule MyList do
  def len([]), do: 0
  # pattern match - if the lenght of the list is 0, print 0
  def len([head | tail]), do: 1 + len(tail)
  # length (list) -  pattern match head to tail, then for the length of the tail, add 1

  def square([]) , do: []
  def square([head | tail ]), do: [head*head | square(tail)]

  def add_1([]), do: []
  def add_1([head | tail]), do: [ head+1 | add_1(tail)  ]

  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head + total)

  # def mapsum(list, func), do: mapsum(list, func, 0)

  def mapsum(list, func), do: mapsum(list, func, 0)
  def mapsum([], func, total), do: total
  def mapsum([head | tail ], func, total) do 
    new_total = func.(head) + total
    mapsum(tail, func, new_total)
  end
end


mapsum([1, 2, 3], fn -> x ** 2 end)



# len([11,12,13,14,15,16])
# = 1 + len([12, 13, 14, 15, 16])
# = 1 + 1 len ([13, 14, 15, 16])
# = 1 + 1 + 1 len([14, 15, 16])
# = 1 + 1 + 1 + 1 len([15, 16])
# = 1 + 1 + 1 + 1 + 1 len([16]) 
# = 1 + 1 + 1 + 1 + 1 + 1 + 0
# = 6



def max(list), do: _max(list, 0)
def _max([head | tail], current_max) do 
  new_max = 
    if head > current_max do 
      head
    else 
      current_max
    end
  
  max(tail, new_max)
end