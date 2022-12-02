defmodule Challenge1.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Challenge1Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Challenge1.PubSub},
      # Start the Endpoint (http/https)
      Challenge1Web.Endpoint
      # Start a worker by calling: Challenge1.Worker.start_link(arg)
      # {Challenge1.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Challenge1.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Challenge1Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
