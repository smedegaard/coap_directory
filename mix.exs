defmodule CoapDirectory.Mixfile do
  use Mix.Project

  def project do
    [app: :coap_directory,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [
      applications: [:logger, :gen_coap],
      mod: {CoapDirectory, []}
    ]
  end

  defp deps do
    [
      {:gen_coap, git: "https://github.com/gotthardp/gen_coap.git"},
      {:coap, git: "https://github.com/mskv/coap.git"}
    ]
  end
end
