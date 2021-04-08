defprotocol GameOfLife.PetriDish do
  @spec active?(t, pos_integer, pos_integer) :: boolean
  def active?(petri_dish, x, y)

  @spec activate(t, pos_integer, pos_integer, boolean) :: t
  def activate(t, x, y, expected_state)

  @spec activate(t, pos_integer, pos_integer, boolean) :: t
  def deactivate(t, x, y, expected_state)

  @spec cells_to_analyze(t) :: [{pos_integer, pos_integer}]
  def cells_to_analyze(petri_dish)

  @spec active_neighbours(t, pos_integer, pos_integer) :: non_neg_integer
  def active_neighbours(petri_dish, x, y)

  @spec clean(t) :: t
  def clean(t)

  @spec change_cell_state(t, pos_integer, pos_integer, pos_integer) :: t
  def change_cell_state(petri_dish, x, y, value)
end
