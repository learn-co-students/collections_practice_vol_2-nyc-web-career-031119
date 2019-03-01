def begins_with_r(array)
    array.all? do |x|
    x[0] == "r"
    end
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end  

def first_wa(array)
  array.find do |x|
   x[0] == "w" && x[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |string|
    string.is_a?(String) == false
  end
end

def count_elements(array)
  array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end


def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(cool)
  cool.select do |x|
    x.any? do |k, v|
      v == "cool"
    end
  end
end

def organize_schools(schools)
  new_hash = {}
    schools.collect {|k,v| new_hash[v[:location]] = []}
    new_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
