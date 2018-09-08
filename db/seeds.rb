# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



items_hash =  {
  nybagel:  {
    name: "New York Bagel",
    price: 1,
    description: "Quickly boiled and baked, NY Style Bagel."
  },
  becca:  {
    name: "B.E.C.A",
    price: 1,
    description: "Bacon, Egg, & Cheese + Avocado."
  },
  coffee:  {
    name: "Coffee",
    price: 1,
    description: "Daily brewed coffee with beans from Colombia."
  },
  juice:  {
    name: "Juice",
    price: 1,
    description: "Freshly squeezed oranges from Florida."
  }
}


items_hash.each do |k,v|
  Item.create(v)
end
