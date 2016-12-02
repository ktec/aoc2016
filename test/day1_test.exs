defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "move R1" do
    assert Day1.move({0,0}, "R1") == {1,0}
  end

  test "move R2" do
    assert Day1.move({0,0}, "R2") == {2,0}
  end

  test "move L1" do
    assert Day1.move({0,0}, "L1") == {-1,0}
  end

  test "move L2" do
    assert Day1.move({0,0}, "L2") == {-2,0}
  end
end
