defmodule Powers do
  import Kernel, except: [raise: 2]

  @moduledoc """
  Function for raising a number to an integer power.
  from *Études for Elixir*, O'Reilly Media, Inc., 2013.
  Copyright 2013 by J. David Eisenberg.
  """
  @vsn 0.1

  @doc """
  Raise a number x to an integer power n.
  Any number to the power 0 equals 1.
  Any number to the power 1 is that number itself.
  When n is positive, x^n is equal to x times x^(n - 1)
  When n is negative, x^n is equal to 1.0 / x^n

  ## Examples

  iex(2)> Powers.raise(5,1)
  5
  iex(3)> Powers.raise(2,3)
  8
  iex(4)> Powers.raise(1.2, 3)
  1.728
  iex(5)> Powers.raise(2, 0)
  1
  iex(6)> Powers.raise(2, -3)
  0.125
  """

  @doc """
  ## Étude 4-4: Tail Recursion with an Accumulator

  Practice the "accumulator trick." Rewrite the raise/2 function for n
  greater than zero so that it calls a helper function raise/3 This
  new function has x, n, and an accumulator as its parameters.

  Your raise/2 function will return 1 when n is equal to 0, and will
  return 1.0 / raise(x, -n) when n is less than zero.

  When n is greater than zero, raise/2 will call raise/3 with
  arguments x, n, and 1 as the accumulator.

  The raise/3 function will return the accumulator when n equals 0
  (this will stop the recursion).

  Otherwise, recursively call raise/3 with x, n - 1, and x times the
  accumulator as its arguments.

  The raise/3 function is tail recursive.
  """

  @doc"""
  ## Étude 4-5: Recursion with a Helper

  Function In this exercise, you
  will add a function nth_root/2 to the Powers module. This new
  function finds the nth root of a number, where n is an integer. For
  example, nth_root(36, 2) will calculate the square root of 36, and
  nth_root(1.728, 3) will return the cube root of 1.728.

  The algorithm used here is the Newton-Raphson method for calculating
  roots. (See http://en.wikipedia.org/wiki/Newton%27s_method for
  details).

  You will need a helper function nth_root/3, whose parameters are x,
  n, and an approximation to the result, which we will call
  a. nth_root/3 works as follows:

  * Calculate f as (an - x)
  * Calculate f_prime as n * a(n - 1)
  * Calculate your next approximation (call it next) as a - f / f_prime
  * Calculate the change in value (call it change) as the absolute value of next - a
  * If the change is less than some limit (say, 1.0e-8), stop the
  recursion and return next; that’s as close to the root as you are
  going to get.
  * Otherwise, call the nth_root/3 function again with x,n, and next as its arguments.

  For your first approximation, use x / 2.0. Thus, your nth_root/2 function will simply be this:

  nth_root(x, n) → nth_root(x, n, x / 2.0)

  Use IO.puts to show each new approximation as you calculate it. If
  your argument name is estimate, you would do something like this:

  ## Examples

  iex(2)> Powers.nth_root(27, 3)
  Current guess is 13.5
  Current guess is 9.049382716049383
  Current guess is 6.142823558176272
  Current guess is 4.333725614685509
  Current guess is 3.3683535855517652
  Current guess is 3.038813723595138
  Current guess is 3.0004936436555805
  Current guess is 3.000000081210202
  Current guess is 3.000000000000002
  3.0

  """
end
