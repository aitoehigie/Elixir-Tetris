defmodule BrickTest do
  use ExUnit.Case
  import Tetris.Brick

  test "check Brick property Struct" do
    assert new_brick().name == :i
  end

  def new_brick(),  do: new()

  test "create a new random brick" do
    actual = new_random()
    assert actual.name in Enum.to_list(~w(i l z o t)a)
    assert actual.reflection in [true, false]
    assert actual.rotation in Enum.to_list(0..270//90)
  end

  test "should manipulate brick" do
    actual = 
      new_brick()
      |> left
      |> right
      |> right
      |> down
      |> spin_90
      |> spin_90
    assert actual.location == {41, 1}
    assert actual.rotation == 180
  end
end
