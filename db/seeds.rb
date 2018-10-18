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


@supervisor = Supervisor.create(
  name: "Jennifer Almeida"
)

@charlie = Team.create(
  name: "Charlie",
  supervisor: @supervisor
)

["First", "Second", "Third", "Fourth"].each do |turn|
  Turn.create(
    name: turn,
    description: "Turno mto legal"
  )
end


5.times do
  Group.create(
    description: ["Grave", "Medio", "Leve"].sample,
    weight: ["30", "15", "5"].sample
  )
end

Guideline.create(
  item: "Não sei",
  group: Group.all.sample
)

15.times do
  Employee.create(
    name: ["Batata1", "Batata2", "Potato", "Batatasso"].sample,
    turn: Turn.all.sample,
    team: @charlie
  )
end
