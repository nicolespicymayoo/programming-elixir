#Write a function that takes three arguments. If the first two are zero, return “FizzBuzz.” If the first is zero, return “Fizz.” If the second is zero, return “Buzz.” Otherwise return the third argument. Do not use any lan- guage features that we haven’t yet covered in this book.

fizz_buzz_helper = fn 
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

#The operator rem(a, b) returns the remainder after dividing a by b. Write a function that takes a single integer (n) and calls the function in the previous exercise, passing it rem(n,3), rem(n,5), and n. Call it seven times with the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.”

fizz_buzz = fn n ->
  IO.inspect fizz_buzz_helper.(rem(n,3), rem(n,5), n)
end

fizz_buzz.(10)
fizz_buzz.(11)
fizz_buzz.(12)
fizz_buzz.(13)
fizz_buzz.(14)
fizz_buzz.(15)
fizz_buzz.(16)
fizz_buzz.(17)
fizz_buzz.(18)

fizz_buzz = fn n ->
  cond do 
    rem(n, 3) == 0 -> "fizz"
    rem(n, 5) == 0 -> "buzz" 
    rem(n, 3) == 0 and rem(n, 5) == 0 -> "fizzbuzz"
    _ -> n
  end
end