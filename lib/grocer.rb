def find_item_by_name_in_collection(name, collection)
  i = 0
  answer = nil
  while i < collection.length do
    if collection[i][:item] == name
      answer = collection[i]
    end
    i += 1
  end
  answer
end

def consolidate_cart(cart)
  subcart = []
  
  i = 0 
  while i < cart.length do
    subcart << cart[i]
    i += 1 
  end
  
  i = 0 
  while i < subcart.length do
    subcart[i][:count] = subcart.count{|x| x == subcart[i]}
    i += 1
  end
  
  subcart.uniq
end


  