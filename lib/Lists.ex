defmodule Lists do
  @spec len([any()]) :: non_neg_integer()
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  @spec sum([number()]) :: number()
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  @spec double([number()]) :: [number()]
  def double([]), do: []
  def double([head | tail]), do: [2 * head | double(tail)]

  @spec sqeuare_list([number()]) :: [number()]
  def sqeuare_list([]), do: []
  def sqeuare_list([head | tail]), do: [head * head | sqeuare_list(tail)]

  @spec sum_pairs([number()]) :: [number()]
  def sum_pairs([]), do: []
  def sum_pairs([h1, h2 | t]), do: [h1 + h2 | sum_pairs(t)]

  @spec even_length?([any()]) :: boolean()
  def even_length?([]), do: true
  def even_length?([_head]), do: false
  def even_length?([_head | tail]), do: even_length?(tail)
end
