defmodule Calculus do
  @moduledoc """
  from *Études for Elixir*, O'Reilly Media, Inc., 2013.
  Copyright 2013 by J. David Eisenberg.
  """
  @vsn 0.1

  @doc """
  ## Étude 8-1: Simple Higher Order Functions
  In calculus, the derivative of a function is "a measure of how a
  function changes as its input changes" (Wikipedia). For example, if
  an object is traveling at a constant velocity, that velocity is the
  same from moment to moment, so the derviative is zero. If an object
  is falling, its velocity changes a little bit as the object starts
  falling, and then falls faster and faster as time goes by.

  You can calculate the rate of change of a function by calculating:
  (f(x + delta) - f(x)) / delta, where delta is the interval between
  measurements. As delta approaches zero, you get closer and closer to
  the true value of the derivative.

  Write a module named Calculus with a function derivative/2. The
  first argument is the function whose derivative you wish to find,
  and the second argument is the point at which you are measuring the
  derivative.

  What should you use for a value of delta? I used 1.0e-10, as that is a small number that approaches zero.

  ## Examples
  iex(2)> f1 = fn(x) -> x * x end
  ......> f1.(7)
  49

  iex(4)> Calculus.derivative(f1, 3)
  6.00000049644222599454
  iex(5)> Calculus.derivative(fn(x) -> 3 * x * x + 2 * x + 1 end, 5)
  32.00000264769187197089

  iex(6)> Calculus.derivative(&:math.sin/1, 0)
  1.0
  """
  @spec derivative(fun, number) :: number

end
