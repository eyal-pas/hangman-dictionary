defmodule Dictionary.Runtime.Application do
  alias Dictionary.Runtime.Server
  use Application

  def start(_type, _args) do
    children = [
      {Server, []}
    ]

    options = [
      # There are many strategies available
      strategy: :one_for_one,
      max_restarts: 10,
      max_seconds: 60,
      name: Dictionary.Runtime.Supervisor
    ]

    Supervisor.start_link(children, options)
  end
end
