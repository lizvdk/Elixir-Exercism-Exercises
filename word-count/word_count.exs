defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    words =
      sentence
      |> String.downcase
      |> String.split(~r/[^\d\p{L}-]+/u, trim: true)
    Map.new(words, fn(x) -> { x, occurrence_of_word(x, words) } end)
  end

  defp occurrence_of_word(word, words) do
    Enum.count(words, fn(x) ->
      x == word
    end)
  end
end
