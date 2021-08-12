defmodule PactTest do
  use ExUnit.Case
  doctest Pact

  test "greets the world" do
    assert Pact.hello() == :world
  end
end
