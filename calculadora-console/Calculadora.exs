defmodule Calculadora do

  def inicio do
    IO.puts "Bem-vindo a calculadora!"
    menu()
  end

  defp menu do
    IO.puts """
    Escolha uma operação:
    1 - Adição
    2 - Subtração
    3 - Multiplicação
    4 - Divisão
    5 - Encerrar
    """

    case IO.gets("Escolha uma opção: ") |> String.trim() |> String.to_integer() do
      1 -> soma()
      2 -> subtracao()
      3 -> multiplicacao()
      4 -> divisao()
      5 -> IO.puts "Saindo..."
      _ ->
        IO.puts "Opção inválida. Tente novamente."
        menu()
    end
  end

  defp soma do
    {num1, num2} = get_two_numbers()
    IO.puts "Resultado: #{num1 + num2}\n"
    menu()
  end

  defp subtracao do
    {num1, num2} = get_two_numbers()
    IO.puts "Resultado: #{num1 - num2}\n"
    menu()
  end

  defp multiplicacao do
    {num1, num2} = get_two_numbers()
    IO.puts "Resultado: #{num1 * num2}\n"
    menu()
  end

  defp divisao do
    {num1, num2} = get_two_numbers()
    if num2 == 0 do
      IO.puts "Divisão por 0 não é possível"
    else
      IO.puts "Resultado: #{num1 / num2}\n"
    end
    menu()
  end

  defp get_two_numbers do
    num1 = get_number("Digite o primeiro número: ")
    num2 = get_number("Digite o segundo número: ")

    {num1, num2}
  end

  defp get_number(prompt) do
    input = IO.gets(prompt) |> String.trim()

    case Float.parse(input) do
      {num, ""} -> num
      :error ->
        case Integer.parse(input) do
          {num, ""} -> num
          :error ->
            IO.puts "Entrada inválida"
            get_number(prompt)
        end
    end
  end
end

Calculadora.inicio()
