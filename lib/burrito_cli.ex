defmodule BurritoCli do
  @moduledoc """
  Documentation for `BurritoCli`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> BurritoCli.hello()
      :world

  """
  def start(_, _) do
    ["--no-halt", "--", "start", _ | rest] = Burrito.Util.Args.get_arguments()

    case rest do
      [url, key] ->
        IO.inspect(Req.get!(url).body[key])

      [url] ->
        IO.inspect(Req.get!(url).body)

      [] ->
        nil
    end

    System.halt(0)
  end
end
