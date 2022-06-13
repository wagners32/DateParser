defmodule DateParserTest do
  use ExUnit.Case
  doctest DateParser

  test "match the day from a date" do
    assert DateParser.day() |> is_binary()
  end

  describe "numeric pattern for day matches" do
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

    test "padded days" do
      assert "01" =~ Regex.compile!(DateParser.day())
      assert "02" =~ Regex.compile!(DateParser.day())
      assert "03" =~ Regex.compile!(DateParser.day())
      assert "04" =~ Regex.compile!(DateParser.day())
      assert "05" =~ Regex.compile!(DateParser.day())
      assert "06" =~ Regex.compile!(DateParser.day())
      assert "07" =~ Regex.compile!(DateParser.day())
      assert "08" =~ Regex.compile!(DateParser.day())
      assert "09" =~ Regex.compile!(DateParser.day())
    end
  end

  test "test numeric pattern for month is a string" do
    assert "1" =~ Regex.compile!(DateParser.month())
    assert "2" =~ Regex.compile!(DateParser.month())
    assert "3" =~ Regex.compile!(DateParser.month())
    assert "4" =~ Regex.compile!(DateParser.month())
    assert "5" =~ Regex.compile!(DateParser.month())
    assert "6" =~ Regex.compile!(DateParser.month())
    assert "7" =~ Regex.compile!(DateParser.month())
    assert "8" =~ Regex.compile!(DateParser.month())
    assert "9" =~ Regex.compile!(DateParser.month())
    assert "10" =~ Regex.compile!(DateParser.month())
    assert "11" =~ Regex.compile!(DateParser.month())
    assert "12" =~ Regex.compile!(DateParser.month())
  end

  test "test numeric pattern for year doesn't match short year" do
    refute "84" =~ Regex.compile!("^#{DateParser.year()}$")
  end

  test "test numeric pattern for year is a string" do
    assert "2021" =~ Regex.compile!(DateParser.year())
    assert "2022" =~ Regex.compile!(DateParser.year())
  end 

  describe "numeric pattern for year" do
    test "matches 4 digits", do: assert("1970" =~ Regex.compile!("^#{DateParser.year()}$"))
    test "doesn't match short year", do: refute("84" =~ Regex.compile!("^#{DateParser.year()}$"))
    test "doesn't match letters", do: refute("198A" =~ Regex.compile!("^#{DateParser.year()}$"))
    test "doesn't match too few", do: refute("198" =~ Regex.compile!("^#{DateParser.year()}$"))
    test "doesn't match too many", do: refute("19701" =~ Regex.compile!("^#{DateParser.year()}$"))
  end
end
