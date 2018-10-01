defmodule Cryptopals do

  require Bitwise

  def hex_to_base64(hex_string) do
    hex_string
    |> Base.decode16!(case: :mixed)
    |> Base.encode64()
  end

  def fixed_xor(a, b) do
    {:ok , decode_a} = Base.decode16(a, case: :mixed)
    {:ok , decode_b} = Base.decode16(b, case: :mixed)
    Enum.zip(to_charlist(decode_a), to_charlist(decode_b))
    |> Enum.map(fn {a, b} -> Bitwise.bxor(a, b) end)
    |> to_string()
    |> Base.encode16()
  end

end
