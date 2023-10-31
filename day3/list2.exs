defmodule SomeList2 do
  def min_max(list) do
    {max(list), min(list)}
  end

  def max([]) do
    nil
  end

  def max([head | tail]) when tail == [] do
    head
  end

  def max([head | tail]) do
    if head > max(tail) do
      head
    else
      max(tail)
    end
  end

  def min([]) do
    nil
  end

  def min([head| tail]) when tail == [] do
    head
  end

  def min([head | tail]) do
    if head < min(tail) do
      head
    else
      min(tail)
    end
  end
end
