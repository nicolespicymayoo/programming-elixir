defmodule Example do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end

defmodule Params do 
  def func(p1, p2 \\ 123)

  def func(p1, p2) when is_list(p1) do 
    "you said #{p2} with a list"
  end
  def func(p1, p2) do
    "you passed in #{p1} and #{p2}"
  end
end

IO.puts Params.func(100)
IO.puts Params.func(100, "cat")
IO.puts Params.func([100])
IO.puts Params.func([100], "pup")