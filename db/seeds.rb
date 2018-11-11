@charlie = Team.create(
  name: "Charlie"
)

["First", "Second", "Third", "Fourth"].each do |turn|
  Turn.create(
    name: turn,
    description: "Turno mto legal"
  )
end

@admin = User.create(
  name: "Chris",
  kind: 0,
  email: "coordenador@desktop",
  password: "123456",
  password_confirmation: "123456",
  team: @charlie,
  turn: Turn.all.sample
)

@naoadmin = User.create(
  name: "Jadir",
  kind: 1,
  email: "supervisor@desktop",
  password: "123456",
  password_confirmation: "123456",
  team: @charlie,
  turn: Turn.all.sample
)

["Grave", "Medio", "Leve"].each do |weight|
  Group.create(
    description: weight,
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
