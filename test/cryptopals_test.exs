defmodule CryptopalsTest do
  use ExUnit.Case
  doctest Cryptopals

  test "hex_to_base64 works" do
    test_input = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
    expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

    assert Cryptopals.hex_to_base64(test_input) == expected
  end

  test "xor works" do
    a = "1c0111001f010100061a024b53535009181c"
    b = "686974207468652062756c6c277320657965"
    expected = "746865206B696420646F6E277420706C6179"

    assert Cryptopals.fixed_xor(a, b) == expected
  end
end
