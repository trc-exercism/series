defmodule StringSeries do
  @doc """
  Given a string `s` and a positive integer `size`, return all substrings
  of that size. If `size` is greater than the length of `s`, or less than 1,
  return an empty list.
  """
  @spec slices(s :: String.t(), size :: integer) :: list(String.t())
  def slices(string, size) do
    _slices(String.to_charlist(string), size, [])
  end

  defp _slices(_list, size, acc) when size < 1, do: acc
  defp _slices(list, size, acc) when size > length(list), do: acc

  defp _slices(list, size, acc) do
    _slices(tl(list), size, acc ++ [to_string(Enum.take(list, size))])
  end
end

