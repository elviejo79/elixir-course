defmodule Geom do
  @moduledoc """
  ## Étude 2-1: Writing a Function
  Write a module with a function that takes the length and width of a rectangle
  and returns (yields) its area. Name the module Geom, and name the function
  area.
  Save the module in a file named geom.ex. The function has arity 2, because it
  needs two pieces of information to make the calculation.
  In Elixir-speak: write function area/2.
  """

  @doc """
  function that takes the length and width of a rectangle and returns (yields) its area.

  ## Examples
  iex> Geom.rectangle(3,4)
  12

  iex> Geom.rectangle(12, 7)
  84
  """

  @doc """
  Function that takes a base and height and returns the area of a
  circle with default values of 1

  ## Examples

  iex> Geom.triangle(7, 10)
  35
  iex> Geom.triangle(14)
  7
  iex> Geom.triangle()
  0.5
  """

  @doc """
  What happens if you have default values that aren’t the last ones in
  the function definition? Try it and find out.

  ## Examples
  Geom.sum(11,22,33)

  Geom.sum(11, 22)

  Geom.sum(11)
  """
  def sum( a \\ 3, b, c \\ 7) do
    a + b + c
  end

  @doc """
  ## Étude 3-1: Pattern Matching
  Use atoms and pattern matching to make your area function calculate
  the area of a rectangle, triangle, or ellipse. If your parameters
  are shape, a and b, the area for the atom :rectangle is a * b, where
  a and b represent the length and width. For a :triangle atom, the
  area is a * b / 2.0, with a and b representing the base and height
  of the triangle. For an :ellipse atom, the area is :math.pi() * a *
  b, where a and b represent the major and minor radiuses.

  ## Examples iex> Geom.area(:rectangle, 3, 4) 12 iex>
  Geom.area(:triangle, 3, 5) 7.5 iex> Geom.area(:ellipse, 2, 4)
  25.132741228718345 """

  @doc """ ## Étude 3-2: Guards
  Even though you won’t get an error message when calculating the area
  of a shape that has negative dimensions, it’s still worth guarding
  your area/3 function. You will want two guards for each pattern to
  make sure that both dimensions are greater than or equal to
  zero. Since both have to be non-negative, use and to separate your
  guards.

  ## Examples

  iex(2)> Geom.area(:rectangle, -3, 4)
  ** (FunctionClauseError) no function clause matching

  iex(2)> Geom.area(:triangle, 3, -4)
  ** (FunctionClauseError) no function clause matching

  iex(2)> Geom.area(:ellipse, -3, -4)
  ** (FunctionClauseError) no function clause matching

  iex(2)> Geom.area(:rectangle, 3, 4)
  12

  iex(3)> Geom.area(:triangle, 3, 4)
  6.0

  """

  @doc"""
  ## Étude 3-3: Underscores
  If you enter a shape that area/3 doesn’t know about, or if you enter
  negative dimensions, Elixir will give you an error message. Use
  underscores to create a “catch-all” version, so that anything at all
  that doesn’t match a valid rectangle, triangle, or ellipse will
  return zero.

  ## Examples
  iex(2)> Geom.area(:rectangle, 3, 4)
  12
  iex(3)> Geom.area(:pentagon, 3, 4)
  0
  iex(4)> Geom.area(:ellipse, -1, 5)
  0
  iex(5)> Geom.area(:triangle, 5, -1)
  0
  """

  @doc"""
  ## Étude 3-4: Tuples as Parameters
  Add an area/1 function that takes a tuple of the form
  {shape,number,number} as its parameter. The area/1 function will
  call the private area/3 function. Hint: use defp for private
  functions.

  """

  @doc """
  Calculates the area of a shape, given the shape and two of the
  dimensions. Returns the product of its arguments for a rectangle,
  one half the product of the arguments for a triangle, and
  :math.pi times the product of the arguments for an ellipse.
  Accepts only dimensions that are non-negative.


  @spec area(atom(), number(), number()) :: number()

  def area(shape, a, b) when a >= 0 and b >= 0 do

  ## Examples

  iex(2)> Geom.area({:rectangle, 7, 3)
  21

  iex(3)> Geom.area(:triangle, 7, 3)
  10.5

  iex(4)> Geom.area(:ellipse, 7, 3)
  65.97344572538566

  iex(5)> Geom.area(:pentagon, 7, 3)
  0

  """

end
