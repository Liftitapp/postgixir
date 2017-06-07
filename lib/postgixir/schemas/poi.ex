defmodule Postgixir.Schema.Poi do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pois" do
    field :geom, Geo.Geometry
    field :name, :string
    field :amenity, :string
  end

  @attrs [:geom, :name, :amenity]
  @required_attrs [:geom, :name, :amenity]

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @attrs)
    |> validate_required(@required_attrs)
  end
end
