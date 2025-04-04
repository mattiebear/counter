defmodule Counter.CoreTest do
  use ExUnit.Case
  doctest Counter.Core

  test "increments a positive integer" do
    assert Counter.Core.inc(5) == 6
  end

  test "increments a negative integer" do
    assert Counter.Core.inc(-1) == 0
  end

  test "raises an error when given a non-integer" do
    assert_raise ArgumentError, fn -> Counter.Core.inc("a") end
  end
end
