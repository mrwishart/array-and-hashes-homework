users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)

p "Jonathan's Twitter handle is: #{users["Jonathan"][:twitter]}"

# 2. Get Erik's hometown

p "Eric's hometown is: #{users["Erik"][:home_town]}"

# 3. Get the array of Erik's lottery numbers

erik_lottery = users["Erik"][:lottery_numbers]
p "Eric's lottery number array:"
p erik_lottery

# 4. Get the type of Avril's pet Monty

# Put Avril's pets into a separate variable for clarity
avril_pets = users["Avril"][:pets].dup

monty = ""

# Loops over length of pet array
for i in 1..avril_pets.length
  # If petname = Monty, takes species and end loop

  if avril_pets[i-1].has_value?("monty")
    monty = avril_pets[i-1][:species]
    break
  end

end

p monty

# 5. Get the smallest of Erik's lottery numbers

smallest_number = 999

for number in erik_lottery

  smallest_number = number if smallest_number > number

end

p "Erik's smallest number is: #{smallest_number}"

# 6. Return an array of Avril's lottery numbers that are even

avril_lottery = users["Avril"][:lottery_numbers]
avril_even = []

for number in avril_lottery

  avril_even.push(number) if number%2 == 0

end

p avril_even

# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers

users["Erik"][:lottery_numbers].push(7)

#p users["Erik"][:lottery_numbers]

# 8. Change Erik's hometown to Edinburgh

users["Erik"][:home_town] = "Edinburgh"

# 9. Add a pet dog to Erik called "Fluffy"

fluffy = {:name => "fluffy",
:species => "dog"}

users["Erik"][:pets].push(fluffy)

# 10. Add another person to the users hash

# Note: Not my current list of pets, just those I grew up with!

users["Paul"] = {
  :twitter => "MrWishart",
  :lottery_numbers => [1, 2, 3, 4, 5, 6],
  :home_town => "Cellardyke",
  :pets => [
    {
      :name => "Beepies",
      :species => "cat"
    },
    {
      :name => "Tiggy",
      :species => "cat"
    },
    {
      :name => "Blackie",
      :species => "cat"
    },
    {
      :name => "Cloudie",
      :species => "cat"
    },
    {
      :name => "Sachmo",
      :species => "dog"
    },

  ]
}
