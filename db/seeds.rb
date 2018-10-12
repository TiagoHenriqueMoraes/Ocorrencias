@admin = User.create(
  name: "Jenny",
  kind: 1,
  email: "admin@desktop",
  password: "123456",
  password_confirmation: "123456"
)

@naoadmin = User.create(
  name: "Batatas",
  kind: 0,
  email: "naoadmin@desktop",
  password: "123456",
  password_confirmation: "123456"
)