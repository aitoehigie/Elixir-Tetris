defmodule Tetris.Brick do
  defstruct [
    name: :i,
    location: {40, 0},
    rotation: 0,
    reflection: false,
    ]

  def new(), do: %Tetris.Brick{}

  def new_random() do
    %__MODULE__{
      name: random_name(),
      location: {40, 0},
      rotation: random_rotation(),
      reflection: random_reflection()
    }
  end

  def random_name() do
    ~w(i l z o t)a
    |> Enum.random
  end

  def random_reflection() do
    [false, true]
    |> Enum.random
  end
  
  def random_rotation() do
    Enum.to_list(0..270 // 90)
    |> Enum.random
  end

  def left(brick) do
    {x, y} = brick.location
    %{brick | location: point_left({x, y})}
  end

  def right(brick) do
    {x, y} = brick.location
    %{brick | location: point_right({x, y})}
  end

  def point_left({x, y}) do
    {x - 1, y}
  end

  def point_right({x, y}) do
    {x + 1, y}
  end

  def down(brick) do
    {x, y} = brick.location
    %{brick | location: point_down({x, y})}
  end

  def point_down({x, y}) do
    {x, y + 1}
  end
  
  def spin_90(brick) do
    %{brick | rotation: rotate(brick.rotation)}
  end

  def rotate(270), do: 0
  def rotate(degree), do: degree + 90

  #def rotate(degree) do
    #if degree + 90 > 360 do
      #(degree + 90) - 360
    #else
      #degree + 90
    #end
  #end
end
