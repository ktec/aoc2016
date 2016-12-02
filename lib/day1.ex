defmodule Day1 do
  @start_position {0,0,:n}

  def shortest_path(instructions) do
    {x,y,_} = move(@start_position, instructions)
    taxicab_distance({0,0}, {x,y})
  end

  def taxicab_distance({x1,y1},{x2,y2}), do: Kernel.abs(x1-x2) + Kernel.abs(y1-y2)

  def move(pos, instructions) do
    parse(pos, String.split(instructions, ", "))
  end

  defp parse(pos, []), do: pos
  defp parse(pos, [hd|tail]) do
    pos = position(pos, hd)
    parse(pos, tail)
  end

  defp position(pos, instruction, count \\ nil)
  defp position(pos, instruction, nil) do
    <<dir::utf8>> <> count = instruction
    position(pos, dir, String.to_integer(count))
  end
  # L = 76 && R == 82
  defp position({x,y,:n}, 82, count), do: {x+count,y,:e}
  defp position({x,y,:n}, 76, count), do: {x-count,y,:w}
  defp position({x,y,:e}, 82, count), do: {x,y-count,:s}
  defp position({x,y,:e}, 76, count), do: {x,y+count,:n}
  defp position({x,y,:s}, 82, count), do: {x-count,y,:w}
  defp position({x,y,:s}, 76, count), do: {x+count,y,:e}
  defp position({x,y,:w}, 82, count), do: {x,y+count,:n}
  defp position({x,y,:w}, 76, count), do: {x,y-count,:s}
end
