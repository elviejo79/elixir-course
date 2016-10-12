defmodule Dijkstra do

  @moduledoc """
  Recursive function for calculating GCD of two numbers using
  Dijkstra's algorithm.
  from *Études for Elixir*, O'Reilly Media, Inc., 2013.
  Copyright 2013 by J. David Eisenberg.
  """

  @doc """
  Calculates the greatest common divisor of two integers.
  Uses Dijkstra's algorithm, which does not require any division.

  To find the GCD of integers M and N:

  * If M and N are equal, the result is M.
  * If M is greater than N, the result is the GCD of M - N and N
  * Otherwise M must be less than N,
    and the result is the GCD of M and N - M.

  Write a function gcd/2 in a module named Dijkstra that implements
  the algorithm.

  ## Examples
  iex(2)> Dijkstra.gcd(2, 8)
  2
  iex(3)> Dijkstra.gcd(14, 21)
  7
  iex(4)> Dijkstra.gcd(125, 46)
  1
  iex(5)> Dijkstra.gcd(120, 36)
  12
  """

end
