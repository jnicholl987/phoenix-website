defmodule Hello.Post do
  use Hello.Web, :model

  schema "posts" do
    field :title, :string
    field :text, :string
    field :author, :string
    field :link, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :text, :author, :link])
    |> validate_required([:title, :text, :author, :link])
  end
end
