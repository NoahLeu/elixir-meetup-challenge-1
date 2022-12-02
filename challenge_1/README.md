# Challenge1

Project Setup:
  * Create /config/dev.secret.exs and insert the following snippet: 
  ```elixir
  import Config

  config :github_access_token,
    "YOUR_TOKEN"
  ```
  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.


