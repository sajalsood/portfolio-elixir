defmodule PersonalSite.MixFile do
  use Mix.Project

  def project do
    [
      app: :personal_site,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      releases: [
        prod: [ 
          include_executables_for: [:unix],
          steps: [:assemble, :tar]
        ]
      ]
    ]
  end

  def application do
    [
      applications: [:serum]
    ]
  end

  defp deps do
    [
      {:serum, "~> 1.4"},
      {:serum_theme_essence, "~> 1.0"}
    ]
  end
end
