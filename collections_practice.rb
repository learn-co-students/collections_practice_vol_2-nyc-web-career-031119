def begins_with_r(array)
  array.all? do |i|
    i[0] == 'r'
  end
end

def contain_a(array)
  array.select do |i|
    i.include?('a')
  end
end

def first_wa(array)
  array.find do |i|
    i[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |i|
    i.is_a?(String) == false
  end
end

def count_elements(array)
  noDupes = array.uniq
  noDupes.each do |i|
    count = 0
    array.each do |j|
      if i == j then count += 1
      end
    end
    i[:count] = count
  end
end

def merge_data(keys, data)
  merged = []
  keys.each do |i|
    data.first.map do |k,v|
      if i.values[0] == k then merged.push(i.merge(v))
      end
    end
  end
  merged
end

def find_cool(cool)
  cool.select {
    |i| i.any? {
      |k,v| v == "cool"
    }
  }
end

def organize_schools(schools)
  by_location = {}
  schools.map {
    |k,v| by_location[v[:location]] = []
  }
  by_location.each {
    |k,v| schools.each {
      |k1,v1| if k == v1[:location] then v.push(k1)
      end
    }
  }
  by_location
end
