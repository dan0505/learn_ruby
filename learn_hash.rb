users = {
    "Jonathan" => {
      :twitter => "tronathan",
      :favorite_numbers => [12, 42, 75],
    },
    "Erik" => {
      :twitter => "sferik",
      :favorite_numbers => [8, 12, 24],
    },
    "Anil" => {
      :twitter => "bridgpal",
      :favorite_numbers => [12, 14, 85],
    },
  }

# access Jonathan's Twitter handle (i.e. the string "tronathan")
p users["Jonathan"][:twitter]
# add the number 7 to Erik's favorite numbers?
users["Erik"][:favorite_numbers].push(7)
p users
# add yourself to the users hash?
users["Daniel"] = {}
p users
# return the array of Erik's favorite numbers?
p users["Erik"][:favorite_numbers]
# return the smallest of Erik's favorite numbers?
p users["Erik"][:favorite_numbers].sort[0]
# return an array of Anil's favorite numbers that are also even?
p users["Anil"][:favorite_numbers].select { |number| number%2 == 0}
# return an array of the favorite numbers common to all users?
p users["Jonathan"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Anil"][:favorite_numbers]
# return an array containing all users' favorite numbers, sorted, and excluding duplicates?
p (users["Jonathan"][:favorite_numbers] + users["Erik"][:favorite_numbers] + users["Anil"][:favorite_numbers]).uniq.sort