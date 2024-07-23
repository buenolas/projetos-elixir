# Gerador de Senhas

## Visão Geral

Gerador de Senhas é uma aplicação simples de linha de comando escrita em Elixir que permite aos usuários gerar senhas aleatórias. A aplicação fornece uma interface simples para definir o comprimento da senha e gera uma combinação de letras maiúsculas, minúsculas, números e caracteres especiais.

## Funcionalidades

- **Gerar Senha**: Permite aos usuários gerar uma senha aleatória com o comprimento especificado.

## Como Funciona

1. **Inicialização**: A aplicação inicia e combina todos os caracteres possíveis (letras, números e caracteres especiais) em uma lista.
2. **Entrada do Usuário**: O usuário é solicitado a inserir o comprimento desejado da senha.
3. **Geração da Senha**: A aplicação gera uma senha aleatória do comprimento especificado e a exibe para o usuário.

## Primeiros Passos

### Pré-requisitos

- [Elixir](https://elixir-lang.org/install.html) deve estar instalado na sua máquina.

### Instalação

1. **Clone o Repositório**:
    ```sh
    git clone https://github.com/seu-usuario/gerador_senhas.git
    cd gerador_senhas
    ```

2. **Execute a Aplicação**:
    ```sh
    elixir gerador_senhas.exs
    ```

## Uso

Ao executar a aplicação, siga as instruções para gerar sua senha aleatória:
- Digite o comprimento desejado da senha quando solicitado.
- A senha gerada será exibida no terminal.

## Exemplo de Uso

```sh
$ elixir gerador_senhas.exs
Digite o comprimento da senha: 12
Senha gerada: aB3!xY7*Lp4@
```

## Contribuindo

Contribuições são bem-vindas! Por favor, faça um fork deste repositório e envie um pull request para qualquer melhoria ou correção de bugs.

## Licença

Este projeto é licenciado sob a Licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---
