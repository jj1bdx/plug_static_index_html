defmodule PlugStaticIndexHtml.Mixfile do
  use Mix.Project

  @version "0.1.2"

  def project do
    [app: :plug_static_index_html,
     version: @version,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: package,
     docs: [extras: ["README.md"], main: "readme",
              source_ref: "#{@version}",
              source_url: "https://github.com/mbuhot/plug_static_index_html"]]
  end

  def package do
    [name: :plug_static_index_html,
     description: "Serves `index.html` pages for requests to paths without a filename in Phoenix / Plug applications.",
     files: ["lib", "mix.exs"],
     maintainers: ["Michael Buhot (m.buhot@gmail.com)"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/mbuhot/plug_static_index_html"}]
  end

  def application, do: [applications: []]

  defp deps do
    [
      {:plug, "~> 1.0"},
      {:ex_doc, ">= 0.13.0", only: :dev}
    ]
  end
end
