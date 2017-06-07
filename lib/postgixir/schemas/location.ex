defmodule Postgixir.Schema.Location do
  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :geom, Geo.Geometry
    field :name, :string
    field :localname, :string
    field :tags, :map
  end

  @attrs [:geom, :name, :localname, :tags]
  @required_attrs [:geom, :name, :localname]

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @attrs)
    |> validate_required(@required_attrs)
  end
end
