defmodule EnumTest do
  def sum_to(n) do
    Enum.reduce(1..n, 0, &+/2)
  end
  def double(n) when is_integer(n) do
    Enum.map(1..n, fn x -> x * 2 end)
  end
  def double(n) do
    Enum.map(n, fn x -> x * 2 end)
  end
end
