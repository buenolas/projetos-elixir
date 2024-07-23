defmodule Conversor do
  def inicio do
    IO.puts "Bem-vindo ao conversor de temperaturas"
    menu()
  end

  defp menu do
    IO.puts """
    1 - Kelvin para Celsius
    2 - Kelvin para Fahrenheit
    3 - Celsius para Kelvin
    4 - Celsius para Fahrenheit
    5 - Fahrenheit para Celsius
    6 - Fahrenheit para Kelvin
    7 - Encerrar
    """

    case IO.gets("Escolha uma opção: ") |> String.trim() |> String.to_integer() do
      1 -> kelvin_celsius()
      2 -> kelvin_fahrenheit()
      3 -> celsius_kelvin()
      4 -> celsius_fahrenheit()
      5 -> fahrenheit_celsius()
      6 -> fahrenheit_kelvin()
      7 -> IO.puts "Saindo..."
      _ ->
        IO.puts "Entrada inválida, tente novamente"
        menu()
    end
  end

  defp kelvin_celsius do
    temp = get_temp()
    IO.puts "Resultado: #{temp - 273}"
    menu()
  end

  defp kelvin_fahrenheit do
    temp = get_temp()
    IO.puts "Resultado: #{( (temp - 273) * 1.8 ) + 32}"
    menu()
  end

  defp celsius_kelvin do
    temp = get_temp()
    IO.puts "Resultado #{temp + 273}"
    menu()
  end

  defp celsius_fahrenheit do
    temp = get_temp()
    IO.puts "Resultado #{(temp * 1.8) + 32}"
    menu()
  end

  defp fahrenheit_celsius do
    temp = get_temp()
    IO.puts "Resultado: #{(temp-32) / 1.8}"
    menu()
  end

  defp fahrenheit_kelvin do
    temp = get_temp()
    IO.puts "Resultado: #{(((temp-32) / 9) * 5) + 273}"
    menu()
  end

  defp get_temp do
    temp = get_number("Digite a temperatura: ")

    temp
  end

  defp get_number(prompt) do
    input = IO.gets(prompt) |> String.trim()

    case Float.parse(input) do
      {num, ""} -> num
      :error ->
        case Integer.parse(input) do
          {num, ""} -> num
          :error ->
            IO.puts "Entrada inválida, tente novamente"
            get_number(prompt)
        end
    end
  end
end

Conversor.inicio()
