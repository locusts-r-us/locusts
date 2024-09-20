defmodule LocustsTest do
  use ExUnit.Case
  doctest Locusts

  test "greets the world" do
    assert Locusts.introduce_locusts() == nil
  end
end
