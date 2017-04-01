defmodule Identicon.Image do
  #sole purpose of this is to hold our struct, which has all the data in our application
  #we're going to call the list of numbers a hex code. the goal here is to store that list of numbers as this hex property. define struct which has property called :hex with a default value of nil
  defstruct hex: nil, color: nil, grid: nil, pixel_map: nil

end
