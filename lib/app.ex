defmodule Swagger.Plug.App do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    opts = [strategy: :one_for_one, name: Swagger.Plug.Supervisor]
    Supervisor.start_link([], opts)
  end
end
