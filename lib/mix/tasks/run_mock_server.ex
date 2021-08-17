defmodule Mix.Tasks.RunMockServer do
  use Mix.Task

  def run(_args) do
    # require IEx; IEx.pry()

    IO.puts("Hello world")

    added = Pact.add(3, 4)

    IO.puts("Added: #{added}")

    IO.puts(Pact.greet("world"))

    IO.puts("Version: #{Pact.version()}")

    # data = pact_data()
    # Pact.pactffi_create_mock_server(data, "127.0.0.1:0")
    # IO.puts("Created the mock server")
  end

  defp pact_data do
    """
      {
        "provider": {
          "name": "Alice Service"
        },
        "consumer": {
          "name": "Consumer"
        },
        "interactions": [
          {
            "description": "a retrieve Mallory request",
            "request": {
              "method": "GET",
              "path": "/mallory",
              "query": "name=ron&status=good"
            },
            "response": {
              "status": 200,
              "headers": {
                "Content-Type": "text/html"
              },
              "body": "\"That is some good Mallory.\""
            }
          }
        ],
        "metadata": {
          "pact-specification": {
            "version": "1.0.0"
          },
          "pact-jvm": {
            "version": "1.0.0"
          }
        }
      }
    """
  end
end
