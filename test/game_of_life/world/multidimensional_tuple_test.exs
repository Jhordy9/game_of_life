defmodule GameOfLife.World.MultidimensionalTuple do
  use ExUnit.Case, async: true

  alias GameOfLife.World.MultidimensionalTuple
  alias GameOfLife.PetriDish

  test "new/1 creates a grid with specified size" do
    size = 300
    grid = MultidimensionalTuple.new(300)

    assert size == grid.size
  end

  test "new/1 initiates a multimensional array of size" do
    size = 3
    grid = MultidimensionalTuple.new(size)

    expected_grid = {
      {false, false, false},
      {false, false, false},
      {false, false, false}
    }

    assert expected_grid == grid.cells
  end

  test "activate/3 will activated to specified cell" do
    size = 3

    grid =
      MultidimensionalTuple.new(size)
      |> PetriDish.activate(1, 1)
      |> PetriDish.activate(2, 2)
      |> PetriDish.activate(3, 2)

    expected_grid = {
      {true, false, false},
      {false, true, false},
      {false, true, false}
    }

    assert expected_grid == grid.cells
  end

  test "deactivate/3 will deactivate specified cell" do
    size = 3

    grid =
      MultidimensionalTuple.new(size)
      |> PetriDish.activate(1, 1)
      |> PetriDish.activate(2, 2)
      |> PetriDish.activate(3, 2)
      |> PetriDish.deactivate(2, 2)
      |> PetriDish.deactivate(3, 2)

    expected_grid = {
      {true, false, false},
      {false, false, false},
      {false, false, false}
    }

    assert expected_grid == grid.cells
  end
end
