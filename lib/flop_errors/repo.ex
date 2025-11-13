defmodule FlopErrors.Repo do
  use Ecto.Repo,
    otp_app: :flop_errors,
    adapter: Ecto.Adapters.Postgres
end
