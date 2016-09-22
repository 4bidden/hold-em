defmodule Holdem.Card do
  defstruct [value: nil, suit: nil]
end

defmodule Holdem.Deck do
  @values [:a, :"2", :"3", :"4", :"5", :"6", :"7", :"8", :"9", :"10", :j, :q, :k]
  @suits [:spades, :clubs, :diamonds, :hearts]

  def build_deck do
    @values |> Enum.map(fn(v)->
      @suits |> Enum.map(fn(s) ->
        %Holdem.Card{value: v, suit: s}
      end)
    end)
    |> List.flatten
    |> Enum.shuffle  
  end

end
