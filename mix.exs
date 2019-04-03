defmodule BroadwayRedis.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "An opinionated Redis list connector for Broadway"
  @repo_url "https://github.com/amokan/broadway_redis"

  def project do
    [
      app: :broadway_redis,
      version: @version,
      elixir: "~> 1.5",
      name: "BroadwayRedis",
      description: @description,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:broadway, "~> 0.1"},
      {:ex_doc, ">= 0.20.0", only: :docs},
      {:redix, "~> 0.9.3"}
    ]
  end

  defp docs do
    [
      main: "BroadwayRedis.Producer",
      source_ref: "v#{@version}",
      source_url: @repo_url,
      extras: [
        "README.md",
        "CHANGELOG.md"
      ]
    ]
  end

  defp package do
    %{
      licenses: ["MIT"],
      links: %{"GitHub" => @repo_url},
      maintainers: ["Adam Mokan"]
    }
  end
end
