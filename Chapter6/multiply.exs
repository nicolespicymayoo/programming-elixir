defmodule Times do
  def double(n), do: n * 2

  def triple(n), do: n * 3

  def quadrupal n do
    double(double(n))
  end
end



