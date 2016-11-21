defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    String.split(string)
    |> Enum.map(fn(word) -> String.first(word) end)
    |> List.to_string
    |> String.upcase
  end
end
