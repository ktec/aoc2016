defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "move R1" do
    assert Day1.move({0,0,:n}, "R1") == {1,0,:e}
  end

  test "move R2" do
    assert Day1.move({0,0,:n}, "R2") == {2,0,:e}
  end

  test "move L1" do
    assert Day1.move({0,0,:n}, "L1") == {-1,0,:w}
  end

  test "move L2" do
    assert Day1.move({0,0,:n}, "L2") == {-2,0,:w}
  end

  test "from east move R1" do
    assert Day1.move({0,0,:e}, "R1") == {0,-1,:s}
  end

  test "move R1, L1" do
    assert Day1.move({0,0,:n}, "R1, L1") == {1,1,:n}
  end

  test "move R1, L1, R1, L1" do
    assert Day1.move({0,0,:n}, "R1, L1, R1, L1") == {2,2,:n}
  end

  test "move R1, R1, R1, R1" do
    assert Day1.move({0,0,:n}, "R1, R1, R1, R1") == {0,0,:n}
  end

  test "move R2, L3" do
    assert Day1.move({0,0,:n}, "R2, L3") == {2,3,:n}
  end

  test "0,0 to 2,3" do
    assert Day1.taxicab_distance({0,0}, {2,3}) == 5
  end

  test "R2, L3" do
    assert Day1.shortest_path("R2, L3") == 5
  end

  test "R2, R2, R2" do
    assert Day1.shortest_path("R2, R2, R2") == 2
  end

  test "R5, L5, R5, R3" do
    assert Day1.shortest_path("R5, L5, R5, R3") == 12
  end
end
