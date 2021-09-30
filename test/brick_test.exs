defmodule BrickTest do
  use ExUnit.Case
  import Tetris.Brick

  test "check Brick property Struct" do
    assert new_brick().name == :i
  end

  def new_brick(),  do: new()
end
