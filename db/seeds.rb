@admin = User.create(
  name: "JennyCordenadora",
  kind: 0,
  email: "cordenador@desktop",
  password: "123456",
  password_confirmation: "123456"
)

@naoadmin = User.create(
  name: "Jenny",
  kind: 1,
  email: "supervisor@desktop",
  password: "123456",
  password_confirmation: "123456"
)

@charlie = Team.create(
  name: "Charlie",
  user: @naoadmin
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
