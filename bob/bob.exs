defmodule Bob do
  def hey(input) do
    cond do
        String.length(String.trim(input)) == 0 -> "Fine. Be that way!"
        String.last(input) == "?" -> "Sure."
        String.match?(input, ~r/[^0-9,\W]/) and String.upcase(input) == input -> "Whoa, chill out!"
        true -> "Whatever."
    end
  end
end
