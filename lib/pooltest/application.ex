defmodule Pooltest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = []

    :ok = :erlpool.start_pool(:my_pool, size: 5, start_mfa: {Pooltest.Worker, :start_link, [[]]})

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Pooltest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
