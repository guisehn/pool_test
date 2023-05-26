defmodule Pooltest.Worker do
  use GenServer

  def start_link(opts) when is_list(opts) do
    GenServer.start_link(__MODULE__, opts)
  end

  @impl true
  def init([]) do
    IO.puts("Worker started: #{inspect(self())}")
    {:ok, []}
  end
end
