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
      |> String.replace(~r/[^-\w]/, " ")
      |> String.replace("_", " ")
      |> String.split
      |> Enum.filter(fn(x) -> String.length(x) >0 end)
    Map.new(words, fn(x) -> {x, occurrence_of_word(x, words)} end)
  end

  defp occurrence_of_word(word, words) do
    Enum.count(words, fn(x) ->
      x == word
    end)
  end
end
