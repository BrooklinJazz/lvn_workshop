defmodule LvnWorkshop.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      LvnWorkshopWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:lvn_workshop, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: LvnWorkshop.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: LvnWorkshop.Finch},
      # Start a worker by calling: LvnWorkshop.Worker.start_link(arg)
      # {LvnWorkshop.Worker, arg},
      # Start to serve requests, typically the last entry
      LvnWorkshopWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LvnWorkshop.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LvnWorkshopWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
