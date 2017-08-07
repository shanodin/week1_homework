def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# def pets_in_stock(pet_shop)
#   return pet_shop[:pets]
# end

def admin(pet_shop)
  pet_shop[:admin]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# def total_cash(pet_shop)
#   cash = admin(pet_shop)[:total_cash]
#   return cash
# end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

# def add_or_remove_cash(pet_shop, value)
#   admin(pet_shop)[:total_cash] += value
# end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

# def pets_sold(pet_shop)
#   return admin(pet_shop)[:pets_sold]
# end

def increase_pets_sold(pet_shop, pets_sold)
  return pet_shop[:admin][:pets_sold] += pets_sold
end

# def increase_pets_sold(pet_shop, value)
#   admin(pet_shop)[:pets_sold] +=value
# end

def stock_count(pet_shop)
  counter = 0
  for pets in pet_shop[:pets]
    counter += 1
  end
  return counter
end

# def stock_count(pet_shop)
#   return pets_in_stock(pet_shop).count
# end

def pets_by_breed(pet_shop, breed)
  pets_of_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
    pets_of_breed.push(pet)
    end
  end
  return pets_of_breed
end

# def pets_by_breed(pet_shop, breed)
#   matches = []
#   for oet in pets_in_stock(pet_shop)
#     matches << pet if(pet[:breed] == breed)
#   end
#   return matches
# end

## def find_pet_by_name(pet_shop, name)
##   for pets in pet_shop[:pets]
##     if pets[:name] == name
##       return pets
##     end
##   end
##   return nil
## end
##
## def find_pet_by_name(pet_shop, name)
##   counter = 0
##   for pets in pet_shop[:pets]
##     if pets[:name] != name
##       counter += 1
##       if counter == pet_shop[:pets].count
##         return nil
##       end
##     elsif pets[:name] == name
##       return pets
##    end
##   end
## end

def get_index_from_name(pet_shop, name)
counter = 0
  for pets in pet_shop[:pets]
    if pets[:name] != name
    counter += 1
    else return counter
    end
  end
  return nil
end

def find_pet_by_name(pet_shop, name)
  index = get_index_from_name(pet_shop, name)
  if index.is_a? Integer
    return pet_shop[:pets].at(index)
  else
    return nil
  end
end

# def find_pet_by_name(pet_shop, pet_name)
#   match = nil
#   for pet in pets_in_stock(pet_shop)
#     match = pet if(pet[:name] == pet_name)
#   end
#   return match
# end


def remove_pet_by_name(pet_shop, name)
  index = get_index_from_name(pet_shop, name)
  if index.is_a? Integer
    pet_shop[:pets].delete_at(index)
  else
    return nil
  end
end

# def remove_pet_by_name(pet_shop, pet_name)
#   pets = pets_in_stock(pet_shop)
#   index = 0
#   match = nil
#
#   for pet in pets
#     if(pet[:name] == pet_name)
#       match = pet
#       break
#     end
#     index += 1
#   end
#
#   return if(match == nil)
#   pets.delete_at(index)
# end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

# def add_pet_to_stock(pet_shop, pet)
#   pets_in_stock(pet_shop).push(pet)
# end

def customer_pet_count(customers)
    pets = 0
  for customer in customers do
    pets += customers[:pets].count
  end
  return pets / 2
end

# def customer_pet_count(customer)
#   return customer[:pets].count
# end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# def add_pet_to_customer(customer, pet)
#   customer[:pets] << pet
# end

# def customer_can_afford_pet(customer, pet)
#   return customer[:cash] >= pet[:price]
# end

# def sell_pet_to_customer(pet_shop, pet, customer)
#   return if (pet == nil)
#   return if !(customer_can_afford_pet(customer, pet))
# 
#   add_pet_to_customer(customer, pet)
#   add_or_remove_cash(pet_shop, pet[:price])
#   remove_pet_by_name(pet_shop, pet[:name])
#   increase_pets_sold(pet_shop, 1)
# end
