defmodule DoggoTest do
  use ExUnit.Case
  doctest Doggo

  test "greets the world" do
    assert Doggo.hello() == :world
  end
end
