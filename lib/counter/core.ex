defmodule Counter.Core do
  @moduledoc """
  The core business logic for a simple counter

  Note that this is the business logic for a simple counter and only stores functions for altering data.
  State management is part of a different layer and is not handled here.
  """

  @doc """
  Increments the given integer value by 1.

  ## Examples

      iex> Counter.Core.inc(5)
      6

      iex> Counter.Core.inc(-1)
      0
  """
  @spec inc(integer) :: integer
  def inc(value) when is_integer(value) do
    value + 1
  end

  def inc(_value) do
    raise ArgumentError, message: "Expected an integer"
  end
end
