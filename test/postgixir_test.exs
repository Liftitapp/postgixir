defmodule PostgixirTest do
  use ExUnit.Case
  alias Postgixir.Queries
  doctest Postgixir

  describe "examples" do
    test "pois queries" do
      pois = Queries.get_pois()
      assert length(pois) == 4461
    end

    test "locations queries" do
      pois = Queries.get_locations()
      assert length(pois) == 19
    end

    test "usaquen locations" do
      pois = Queries.get_usaquen_locations()
      assert length(pois) == 393
    end
  end
end
