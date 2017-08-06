def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_sold)
  return pet_shop[:admin][:pets_sold] += pets_sold
end

def stock_count(pet_shop)
  counter = 0
  for pets in pet_shop[:pets]
    counter += 1
  end
  return counter
end

def pets_by_breed(pet_shop, breed)
  pets_of_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
    pets_of_breed.push(pet)
    end
  end
  return pets_of_breed
end

# def find_pet_by_name(pet_shop, name)
#   for pets in pet_shop[:pets]
#     if pets[:name] == name
#       return pets
#     end
#   end
#   return nil
# end

# def find_pet_by_name(pet_shop, name)
#   counter = 0
#   for pets in pet_shop[:pets]
#     if pets[:name] != name
#       counter += 1
#       if counter == pet_shop[:pets].count
#         return nil
#       end
#     elsif pets[:name] == name
#       return pets
#     end
#   end
# end

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

def remove_pet_by_name(pet_shop, name)
  index = get_index_from_name(pet_shop, name)
  if index.is_a? Integer
    pet_shop[:pets].delete_at(index)
  else
    return nil
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
    pets = 0
  for customer in customers do
    pets += customers[:pets].count
  end
  return pets / 2
end

# def test_add_pet_to_customer
#   customer = @customers[0]
#   add_pet_to_customer(customer, @new_pet)
#   assert_equal(1, customer_pet_count(customer))
# end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end
