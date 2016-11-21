defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    rem_3 = { rem(number, 3) == 0, "Pling" }
    rem_5 = { rem(number, 5) == 0, "Plang" }
    rem_7 = { rem(number, 7) == 0, "Plong" }
    remainders = [ rem_3, rem_5, rem_7 ]

    raindrops =
      Enum.map(remainders, fn(x) ->if elem(x, 0) == true do elem(x,1) end end)
      |> Enum.filter(fn(x) -> x end)
      |> List.to_string

    if String.length(raindrops) > 0 do
      raindrops
    else
      Integer.to_string(number)
    end
  end
end
