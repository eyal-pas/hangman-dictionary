defmodule Practice do
  @spec swap_tuple(any(), any()) :: {any(), any()}
  def swap_tuple(a, b), do: {b, a}

  @spec swap_tuple({any(), any()}) :: {any(), any()}
  def swap_tuple({a, b}), do: {b, a}

  @spec equal(any(), any()) :: boolean()
  def equal(a, a), do: true
  def equal(_, _), do: false
end
