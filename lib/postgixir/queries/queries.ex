defmodule Postgixir.Queries do
  alias Postgixir.Repo
  alias Postgixir.Schema.{Location, Poi}
  import Ecto.Query
  import Geo.PostGIS

  def get_pois() do
    query =
      from p in Poi,
      select: p

    Repo.all(query)
  end

  def get_locations() do
    query =
      from l in Location,
      select: l

    Repo.all(query)
  end

  def get_usaquen_locations() do
    query =
      from p in Poi,
      join: l in Location,
      where: l.name == ^"Usaquén" and st_contains(l.geom, p.geom),
      select: p

    Repo.all(query)
  end
end
