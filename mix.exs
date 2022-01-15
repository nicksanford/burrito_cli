defmodule BurritoCli.MixProject do
  use Mix.Project

  def project do
    [
      app: :burrito_cli,
      releases: releases(),
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {BurritoCli, []}
    ]
  end

  def releases do
    [
      burrito_cli: [
        steps: [:assemble, &Burrito.wrap/1],
        burrito: [
          targets: [
            macos: [os: :darwin, cpu: :x86_64],
            linux: [os: :linux, cpu: :x86_64],
            windows: [os: :windows, cpu: :x86_64]
          ]
        ]
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:burrito, github: "burrito-elixir/burrito"},
      {:req, "~> 0.2.0"}
    ]
  end
end
