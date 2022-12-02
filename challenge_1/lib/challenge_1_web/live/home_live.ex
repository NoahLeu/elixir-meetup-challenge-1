defmodule Challenge1Web.HomeLive do
  use Phoenix.LiveView

  alias Challenge1.Github

  def mount(_params, _session, socket) do
    orga =
      Github.get_orga("elixir-meetup-rostock")
      |> Map.get(:body)
      |> Jason.decode!()

    repos =
      Github.get_repos("elixir-meetup-rostock")
      |> Map.get(:body)
      |> Jason.decode!()
      |> IO.inspect(label: "repos")

    {:ok, assign(socket, orga: orga, repos: repos)}
  end
end
