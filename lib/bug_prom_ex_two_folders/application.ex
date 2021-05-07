defmodule BugPromExTwoFolders.Application do
  @moduledoc "TODO"

  use Application

  def start(_type, _args) do
    children = [
      BugPromExTwoFolders.PromEx
    ]

    opts = [strategy: :one_for_one, name: MyCoolApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
