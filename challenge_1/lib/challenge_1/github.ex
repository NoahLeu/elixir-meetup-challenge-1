defmodule Challenge1.Github do
  use HTTPoison.Base

  @endpoint "https://api.github.com"

  # get github access token from dev.exs config
  @access_token Application.compile_env!(:challenge_1, :github_access_token)

  def get_orga(orga) do
    headers = [{:"Authorization", "Bearer #{@access_token}"}]
    get!("#{@endpoint}/orgs/#{orga}", headers, [])
    |> IO.inspect(label: "get_orga")
  end

  def get_repos(orga) do
    headers = [{:"Authorization", "Bearer #{@access_token}"}]
    get!("#{@endpoint}/orgs/#{orga}/repos", headers, [])
  end
end
