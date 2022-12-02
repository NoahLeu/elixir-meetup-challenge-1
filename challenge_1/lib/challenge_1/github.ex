defmodule Challenge1.Github do
  use HTTPoison.Base

  @endpoint "https://api.github.com"

  # get github access token from dev.exs config
  @access_token Application.compile_env!(:challenge_1, :github_access_token)

  def get_orga(orga) do
    get!("#{@endpoint}/orgs/#{orga}", [], [auth: {@access_token, ""}])
  end

  def get_repos(orga) do
    get!("#{@endpoint}/orgs/#{orga}/repos", [], [auth: {@access_token, ""}])
  end
end
