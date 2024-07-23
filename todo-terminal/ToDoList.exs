defmodule ToDoList do
  def initialize do
    IO.puts "Iniciando..."
    to_do_list = []
    menu(to_do_list)
  end

  defp menu(to_do_list) do
    IO.puts """
    \n1- Adicionar tarefa
    2- Remover tarefa
    3- Listar tarefas
    4- Encerrar
    """
    
    case IO.gets("Escolha uma opção: ") |> String.trim() |> String.to_integer() do
      1 -> add_task(to_do_list)
      2 -> remove_task(to_do_list)
      3 -> list_task(to_do_list)
      4 -> IO.puts "Encerrando..."
      _ ->
        IO.puts "Opção inválida, tente novamente..."
        menu(to_do_list)
    end
  end

  defp add_task(to_do_list) do
    task = IO.gets("\nDigite a tarefa a ser adicionada: ") |> String.trim()
    updated_to_do_list = [task | to_do_list]
    IO.puts("Tarefa adicionada com sucesso\n")
    menu(updated_to_do_list)
  end

  defp remove_task(to_do_list) do
    task = IO.gets("\nDigite a tarefa que deseja remover: ") |> String.trim()
    updated_to_do_list = List.delete(to_do_list, task)
    IO.puts("Tarefa removida com sucesso\n")
    menu(updated_to_do_list)
  end

  defp list_task(to_do_list) do
    IO.puts("\nSua tarefas:")
    to_do_list
    |> Enum.each(&IO.puts/1)
    menu(to_do_list)
  end
end

ToDoList.initialize()
