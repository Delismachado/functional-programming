defmodule SomeList do
  def the_biggest(list) when is_list(list) do
    the_biggest(list, hd(list))
  end

  defp the_biggest([current | rest], max) when current > max do
    the_biggest(rest, current)
  end

  defp the_biggest([_ | rest], max) do
    the_biggest(rest, max)
  end

  defp the_biggest([], max) do
    max
  end

  def the_smaller(list) when is_list(list) do
    the_smaller(list, hd(list))
  end

  defp the_smaller([current | rest], min) when current < min do
    the_smaller(rest, current)
  end

  defp the_smaller([_ | rest], min) do
    the_smaller(rest, min)
  end

  defp the_smaller([], min) do
    min
  end
end

# use case
SomeList.the_biggest([1,3,7])
# return 7
SomeList.the_smaller([1,3,7])
# return 1
