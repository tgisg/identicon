defmodule Identicon do
  def main(input) do
    input
    |> hash_input
  end

  def hash_input(input) do
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list ##remember using the pipe operator implicitly is like :binary.bin_to_list(:crypto.hash(:md5, input))
  end
end
