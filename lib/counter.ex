defmodule Counter do
  @moduledoc """
  The primary API for interacting with a counter process.

  This is not an ideal implementation of a counter process. It uses a simple
  process to keep track of the count, but it does not handle errors or
  concurrency issues well. I'll make a more robust one in a new application.
  """

  def start(initial_count) do
    spawn(fn -> Counter.Server.run(initial_count) end)
  end

  def tick(pid) do
    send(pid, {:tick, self()})
  end

  def state(pid) do
    send(pid, {:state, self()})

    receive do
      {:count, value} -> value
    end
  end
end
