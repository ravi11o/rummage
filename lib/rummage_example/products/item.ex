defmodule RummageExample.Products.Item do
  use Ecto.Schema
  import Ecto.Changeset
  alias RummageExample.Products.Item


  schema "items" do
    field :name, :string
    field :price, :integer
    field :category_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Item{} = item, attrs) do
    item
    |> cast(attrs, [:name, :price])
    |> validate_required([:name, :price])
  end
end
