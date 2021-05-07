defmodule BugPromExTwoFolders.MixProject do
  use Mix.Project

  def project do
    [
      app: :bug_prom_ex_two_folders,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {BugPromExTwoFolders.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:prom_ex, git: "https://github.com/akoutmos/prom_ex", ref: "69cbd7116c3a4f195bb913d500f2fa10af884070"}
    ]
  end
end
