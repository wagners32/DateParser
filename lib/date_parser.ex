defmodule DateParser do
  @moduledoc """
  Documentation for `DateParser`.
  """
  def day() do
    "[0-9]"
  end

  def month() do
    "[0-9]"
  end

  def year() do
    "[0-9]{4}"
  end
  
end
