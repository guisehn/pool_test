defmodule PooltestTest do
  use ExUnit.Case
  doctest Pooltest

  test "greets the world" do
    assert Pooltest.hello() == :world
  end
end
