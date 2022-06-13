defmodule DateParserTest do
  use ExUnit.Case
  doctest DateParser

  test "match the day from a date" do
    assert DateParser.day() |> is_binary()
  end

  test "test numeric pattern for day matches un-padded days" do
    assert "1" =~ Regex.compile!(DateParser.day())
    assert "2" =~ Regex.compile!(DateParser.day())
    assert "3" =~ Regex.compile!(DateParser.day())
    assert "4" =~ Regex.compile!(DateParser.day())
    assert "5" =~ Regex.compile!(DateParser.day())
    assert "6" =~ Regex.compile!(DateParser.day())
    assert "7" =~ Regex.compile!(DateParser.day())
    assert "8" =~ Regex.compile!(DateParser.day())
    assert "9" =~ Regex.compile!(DateParser.day())
    assert "10" =~ Regex.compile!(DateParser.day())
    assert "11" =~ Regex.compile!(DateParser.day())
    assert "12" =~ Regex.compile!(DateParser.day())
    assert "13" =~ Regex.compile!(DateParser.day())
    assert "14" =~ Regex.compile!(DateParser.day())
    assert "15" =~ Regex.compile!(DateParser.day())
    assert "16" =~ Regex.compile!(DateParser.day())
    assert "17" =~ Regex.compile!(DateParser.day())
    assert "18" =~ Regex.compile!(DateParser.day())
    assert "19" =~ Regex.compile!(DateParser.day())
    assert "20" =~ Regex.compile!(DateParser.day())
    assert "21" =~ Regex.compile!(DateParser.day())
    assert "22" =~ Regex.compile!(DateParser.day())
    assert "23" =~ Regex.compile!(DateParser.day())
    assert "24" =~ Regex.compile!(DateParser.day())
    assert "25" =~ Regex.compile!(DateParser.day())
    assert "26" =~ Regex.compile!(DateParser.day())
    assert "27" =~ Regex.compile!(DateParser.day())
    assert "28" =~ Regex.compile!(DateParser.day())
    assert "29" =~ Regex.compile!(DateParser.day())
    assert "30" =~ Regex.compile!(DateParser.day())
    assert "31" =~ Regex.compile!(DateParser.day())
  end

  test "test numeric pattern for month is a string" do
    
  end
end
