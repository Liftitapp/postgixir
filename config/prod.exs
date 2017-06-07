use Mix.Config

config :postgixir, Postgixir.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "ottojimb",
  password: "",
  database: "postgis_basic",
  hostname: "localhost",
  pool_size: 10,
  types: Postgixir.PostgresTypes
