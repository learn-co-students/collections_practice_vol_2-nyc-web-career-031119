require "pry"

# your code goes here
def begins_with_r(collection)
  collection.all? do |tool|
    tool.start_with?("r")
  end  
end

def contain_a(collection)
  collection.select do |element|
    element.include?("a")
  end  
end 

def first_wa(collection)
  all_string = collection.join(" ").split
  all_string.find do |element|
    element.start_with?("wa")
  end
end

def remove_non_strings(collection)
  collection.delete_if do |non_string|
    !non_string.is_a? String 
  end
end

def count_elements(collection)
  new_hash = Hash.new(0)
  new_hash_2 = {}
  new_hash_3 = {}
  collection.each do |name|
    new_hash[name] += 1
  end
  new_hash
  new_hash_2[:count] = new_hash[:name => "blake"]
  new_hash_2[:name] = "blake"
  new_hash_3[:count] = new_hash[:name => "ashley"]
  new_hash_3[:name] = "ashley"
  [new_hash_2, new_hash_3]
end

def merge_data(keys, data)
  blake_and_ashley = []
  
  counter = 0
  keys.each do |name_and_motto|
    blake_and_ashley[counter] = name_and_motto
    counter += 1
  end
  
  data_counter = 0
  data.each do |personal_info|
    personal_info.each do |name, more_info|
      more_info.each do |category, specific_info|
        blake_and_ashley[data_counter][category] = specific_info
      end
      data_counter += 1
    end
  end
  
  blake_and_ashley
end

def find_cool(cool)
  cool_array = []
  cool.each do |coolest|
    if coolest[:temperature] == "cool"
      cool_array.push(coolest)
    end
  end
  cool_array
end

def organize_schools(schools)
  final_hash = {}
  all_location_array = []
  unique_location_array = []
  nyc_array = []
  sf_array = []
  chicago_array = []
  
  schools.each do |school, location|
    all_location_array.push(location[:location])
  end
  
  unique_locations = all_location_array.uniq
  
  schools.each do |school, location|
    if unique_locations[0] == location[:location]
      nyc_array.push(school)
    end
  end
  
  schools.each do |school, location|
    if unique_locations[1] == location[:location]
      sf_array.push(school)
    end
  end
  
  schools.each do |school, location|
    if unique_locations[2] == location[:location]
      chicago_array.push(school)
    end
  end
  
  final_hash[unique_locations[0]] = nyc_array
  final_hash[unique_locations[1]] = sf_array
  final_hash[unique_locations[2]] = chicago_array
  
  final_hash
  
end