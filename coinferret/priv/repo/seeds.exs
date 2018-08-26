# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Coinferret.Repo.insert!(%Coinferret.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


Coinferret.Repo.delete_all Coinferret.Users.User

Coinferret.Users.User.changeset(%Coinferret.Users.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> Coinferret.Repo.insert!
|> Coherence.ControllerHelpers.confirm!
