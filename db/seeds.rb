# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



items_hash =  {
  bagel:  {
    name: "Bagel",
    price: 1,
    category: "Baked Goods"
  },
  muffin:  {
    name: "Muffin",
    price: 1,
    category: "Baked Goods"
  },
  cc:  {
    name: "Cream Cheese",
    price: 1,
    category: "Spread"
  },
  jam:  {
    name: "Butter",
    price: 1,
    category: "Spread"
  },
  coffee:  {
    name: "Coffee",
    price: 1,
    category: "Beverage"
  },
  tea:  {
    name: "Tea",
    price: 1,
    category: "Beverage"
  }
}


items_hash.each do |k,v|
  Item.create(v)
end
