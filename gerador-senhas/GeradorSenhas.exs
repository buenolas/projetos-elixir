defmodule GeradorSenhas do

    def inicializar do
        alfabeto = ?a..?z |> Enum.to_list()
        alfabeto_upcase = ?A..?Z |> Enum.to_list()
        numeros = ?0..?9 |> Enum.to_list()
        caracteres_especiais = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '=', '+', '[', ']', '{', '}', '|', ';', ':', ',', '.', '<', '>', '?', '/', '~']        
        
        caracteres = alfabeto ++ alfabeto_upcase ++ numeros ++ caracteres_especiais
        senha = []
        tamanho_senha = 0
        pega_tamanho(caracteres, senha, tamanho_senha)
    end

    defp pega_tamanho(caracteres, senha, tamanho_senha) do
        comprimento = IO.gets("Digite o comprimento da senha: ") |> String.trim() |> String.to_integer()
        gerar_senha(comprimento, caracteres, senha, tamanho_senha)
    end

    defp printa_senha(senha) do
        IO.puts("Senha gerada #{senha}")
    end
    
    defp gerar_senha(comprimento, caracteres, senha, tamanho_senha) do
        
        cond do
            tamanho_senha < comprimento ->
                senha = senha ++ [Enum.random(caracteres)]
                tamanho_senha = tamanho_senha + 1
                gerar_senha(comprimento, caracteres, senha, tamanho_senha)
            
            tamanho_senha == comprimento ->
                printa_senha(senha)
        end
    end
end

GeradorSenhas.inicializar()
