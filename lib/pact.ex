defmodule Pact do
  @moduledoc """
  Documentation for `Pact`.
  """

  use Rustler, otp_app: :pact, crate: "pact_elixir_bindings"

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)

  def greet(_place), do: :erlang.nif_error(:nif_not_loaded)

  def version(), do: :erlang.nif_error(:nif_not_loaded)

  # use Rustler,
  #   otp_app: :pact,
  #   crate: "pact_ffi",
  #   path: "../../pact-reference/rust/pact_ffi"
    # load_from: {:pact, "priv/native/libpact_ffi"},
    # skip_compilation?: true

  # var dll = '../../rust/target/debug/libpact_ffi';
  # var lib = ffi.Library(path.join(__dirname, dll), {
  #   pactffi_create_mock_server: ['int32', ['string', 'string']],
  #   pactffi_mock_server_matched: ['bool', ['int32']],
  #   pactffi_cleanup_mock_server: ['bool', ['int32']]
  # });

  # def pactffi_create_mock_server(_arg1, _arg2), do: :erlang.nif_error(:nif_not_loaded)

  # def pactffi_mock_server_matched(_arg1), do: :erlang.nif_error(:nif_not_loaded)

  # def pactffi_cleanup_mock_server(_arg1), do: :erlang.nif_error(:nif_not_loaded)
end
