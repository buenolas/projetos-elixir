# Conversor de Temperaturas em Elixir

Bem-vindo ao Conversor de Temperaturas em Elixir! Este projeto é uma aplicação de console simples que converte temperaturas entre Kelvin, Celsius e Fahrenheit.

## Funcionalidades

- Converter Kelvin para Celsius
- Converter Kelvin para Fahrenheit
- Converter Celsius para Kelvin
- Converter Celsius para Fahrenheit
- Converter Fahrenheit para Celsius
- Converter Fahrenheit para Kelvin

## Pré-requisitos

Para executar este projeto, você precisará ter o Elixir instalado em sua máquina. Você pode verificar se o Elixir está instalado e sua versão com o seguinte comando:

```bash
elixir -v
```

Se o Elixir não estiver instalado, siga as instruções na [documentação oficial](https://elixir-lang.org/install.html) para instalá-lo.

## Como Executar

1. Clone o repositório ou copie o código para um arquivo chamado `Conversor.exs`.

2. Abra um terminal e navegue até o diretório onde o arquivo `Conversor.exs` está localizado.

3. Execute o seguinte comando para iniciar o conversor:

```bash
elixir Conversor.exs
```

4. Siga as instruções no console para escolher uma conversão e inserir a temperatura.

![Screenshot from 2024-07-05 14-22-42](https://github.com/buenolas/conversor-temperatura/assets/90401265/6fcedaf6-75bf-49e2-9e72-7ee6662f21c7)

## Estrutura do Código

- `inicio/0`: Exibe uma mensagem de boas-vindas e chama o menu principal.
- `menu/0`: Exibe as opções de conversão e aguarda a escolha do usuário.
- `kelvin_celsius/0`: Converte Kelvin para Celsius.
- `kelvin_fahrenheit/0`: Converte Kelvin para Fahrenheit.
- `celsius_kelvin/0`: Converte Celsius para Kelvin.
- `celsius_fahrenheit/0`: Converte Celsius para Fahrenheit.
- `fahrenheit_celsius/0`: Converte Fahrenheit para Celsius.
- `fahrenheit_kelvin/0`: Converte Fahrenheit para Kelvin.
- `get_temp/0`: Solicita a temperatura do usuário.
- `get_number/1`: Converte a entrada do usuário para float ou inteiro, solicitando novamente se a entrada for inválida.

## Contribuição

Se você quiser contribuir para este projeto, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

---

Divirta-se usando o Conversor de Temperaturas em Elixir!
