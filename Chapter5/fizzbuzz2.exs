defmodule FizzBuzz2 do
  def list(n) do 
    Enum.reverse(do_list(n))
  end
    defp do_list(n) when n < 0 do
        raise "you cant fool the system"
    end
    defp do_list(n) when n == 0 do
        []
    end
    defp do_list(n) when n > 0 do
        
        name_list = cond do
            rem(n,3) == 0 && rem(n,5) == 0 -> "Fizzbuzz"
            rem(n,3) == 0 -> "Fizz"
            rem(n,5) == 0 -> "Buzz"
            true -> n
        end
       [name_list | (do_list(n-1))]
    end
end