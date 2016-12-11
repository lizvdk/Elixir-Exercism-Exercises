defmodule Bob do
  def hey(input) do
    cond do
        empty?(input) -> "Fine. Be that way!"
        question?(input) -> "Sure."
        yelling?(input) -> "Whoa, chill out!"
        true -> "Whatever."
    end
  end

  defp empty?(input) do
    String.length(String.trim(input)) == 0
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp yelling?(input) do
    all_caps?(input) and contains_letters?(input)
  end

  defp all_caps?(input) do
    String.upcase(input) == input
  end

  defp contains_letters?(input) do
    String.match?(input, ~r/[^0-9,\W]/)
  end
end
