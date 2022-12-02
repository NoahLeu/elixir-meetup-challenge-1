defmodule Challenge1Web.HomeLive do
  use Phoenix.LiveView

  alias Challenge1.Github

  #@organization_name "altow-de"
  @organization_name "elixir-meetup-rostock"

  def mount(_params, _session, socket) do
    orga = load_orga()
    repos = load_repos()

    {:ok, assign(socket, orga: orga, repos: repos)}
  end

  defp load_orga() do
    orga =
      Github.get_orga(@organization_name)
      |> Map.get(:body)
      |> Jason.decode!()
  end

  defp load_repos() do
    repos =
      Github.get_repos(@organization_name)
      |> Map.get(:body)
      |> Jason.decode!()
  end
end
