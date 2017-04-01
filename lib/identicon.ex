defmodule Identicon do
  def main(input) do
    input
    |> hash_input
    |> pick_color
  end

  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
#iex(10)> Identicon.main("asdf")
#%Identicon.Image{color: {145, 46, 200},
#hex: [145, 46, 200, 3, 178, 206, 73, 228, 165, 65, 6, 141, 73, 90, 181,  112]}
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list ##remember using the pipe operator implicitly is like :binary.bin_to_list(:crypto.hash(:md5, input))
    %Identicon.Image{hex: hex}
  end
end
