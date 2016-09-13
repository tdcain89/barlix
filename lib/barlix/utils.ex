defmodule Barlix.Utils do
  @moduledoc false

  def flatten(a) do
    do_flatten(a, [])
  end

  defp do_flatten([a | b], acc) when is_list(a) do
    do_flatten(a, b ++ acc)
  end
  defp do_flatten(rest, acc), do: rest ++ acc

  def normalize_string(x) when is_binary(x), do: String.to_char_list(x)
  def normalize_string(x), do: x


  def append(a, b), do: [a | b]
end
