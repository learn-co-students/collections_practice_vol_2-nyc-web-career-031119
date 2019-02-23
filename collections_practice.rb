# your code goes here
def begins_with_r (loc)
  list = []
  
  loc.each do |item|
    list << item.start_with?("r")
  end
  if list.include?(false)
    false
  else
    true
  end
end

def contain_a (elements)
  container = []
  
 elements.each do |word|
   word.chars.each do |letter|
    if letter == "a"
      container << word 
    end
   end
 end
 
 container
end


def first_wa (elements)
   list =[]

  elements.each do |item|
   item = item.to_s
  if item.start_with?("wa")
    list << item
  end
  end
  list.first
 
end

def remove_non_strings (array)
  new_array = []
  array
  array.each do |item|
    if item.is_a?String
      new_array << item
    end
  end
new_array
end

def count_elements(array)
  countss =[]
  unique_array = array.uniq
  
  unique_array.each do |hash|
    hash.each do |k, v|
    countss << {:count => array.count(hash), k => v}
  end
end
  countss
end

def merge_data(key, data)
merge_array =[]

  data.each do |data_items|
    data_items.each do |key, value|
      keys.each do |val|
        if val.values[0] == key
          merge_array << val.merge(value)
        end
      end
    end
  end
  merge_array
end


def find_cool(array)
hash_values = []
  hash_values << array[1]
end


def organize_schools (location)
 hash = {}  
 
 # since im already going through each 'locat:"city"' arry only includes one item which is at index [0]. & all hash are unique cannot have more than one of the same key
 
  location.values.each do |item|
    hash[item.values[0]] = []
  end
  
  location.each do | k, v|
    hash[v.values[0]] << k
  end
  
  hash
end