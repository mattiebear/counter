defmodule Counter.Server do
  @moduledoc """
  This module provides a server for managing a counter.
  """

  def run(count) do
    new_count = listen(count)
    run(new_count)
  end

  defp listen(count) do
    receive do
      {:tick, _pid} ->
        Counter.Core.inc(count)

      {:state, pid} ->
        send(pid, {:count, count})
        count
    end
  end
end
