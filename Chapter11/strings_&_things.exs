defmodule Strings do
  def anagram?(word1, word2) do
    if String.reverse(word1) == word2 do 
      true
    else
      false
    end
  end
  
end