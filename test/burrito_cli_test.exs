defmodule BurritoCliTest do
  use ExUnit.Case
  doctest BurritoCli

  test "greets the world" do
    assert BurritoCli.hello() == :world
  end
end
