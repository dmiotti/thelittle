defmodule TheLittle.Exercice1 do

  def sum(numbers) do
    Enum.reduce(numbers, fn(x, acc) -> x + acc end)
  end

  def transform_without_pipe do
    flatten = List.flatten [1,[[2],3]]
    reversed = Enum.reverse flatten
    Enum.map reversed, fn(x) -> x * x end
  end

  def transform_with_pipe do
    List.flatten([1,[[2], 3]]) 
    |> Enum.reverse 
    |> Enum.map(fn(x) -> x * x end)
  end

  def crypto do
    :crypto.md5 "Tales from the crypt"
  end
end
