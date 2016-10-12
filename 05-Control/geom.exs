defmodule Geom do
  @moduledoc """
  ## Étude 4-1: Using case
  Change the area/3 function that you wrote in Étude 3-2 so that it
  uses a case instead of pattern matching. Use a guard on the function
  definition to ensure that the numeric arguments are both greater
  than zero.

  """

  @doc"""
  Use a guard on the function
  definition to ensure that the numeric arguments are both greater
  than zero.

  ## Examples

  iex(2)> Geom.area(:rectangle, -3, 4)
  ** (FunctionClauseError) no function clause matching

  iex(2)> Geom.area(:triangle, 3, -4)
  ** (FunctionClauseError) no function clause matching

  iex(2)> Geom.area(:ellipse, -3, -4)
  ** (FunctionClauseError) no function clause matching

  iex(2)> Geom.area({:rectangle, 7, 3})
  21

  iex(3)> Geom.area({:triangle, 7, 3})
  10.5

  iex(4)> Geom.area({:ellipse, 7, 3})
  65.97344572538566

  iex(5)> Geom.area({:pentagon, 7, 3})
  0
  """
end
