# Write a function MyList.span(from, to) that returns a list of the numbers from from up to to

defmodule MyList_2 do
  def span(_), do: "must provide 2 numbers as a range" 
  def span(from, to) when from == to do
    [ to ]
  end
  def span(from, to) when from < to do
    new_from = from + 1
    [from | span(new_from, to)]
  end
  def span(from, to) when from > to do
    new_from = from - 1
    [from | span(new_from, to)]
  end
end

