defmodule Tetris.Brick do
  defstruct [
    name: :i,
    location: {40, 0},
    rotation: 0,
    reflection: false,
    ]

  def new(), do: %Tetris.Brick{}

  def new_random() do
    %{
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
end
