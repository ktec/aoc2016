defmodule Day1 do
  def move({x,y},"R" <> count), do: {x+String.to_integer(count),y}
  def move({x,y},"L" <> count), do: {x-String.to_integer(count),y}
end
