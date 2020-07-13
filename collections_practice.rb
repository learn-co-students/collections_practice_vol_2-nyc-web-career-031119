def begins_with_r(array)
  array.any? { |e| e[0] != "r" } ? false : true
end

def contain_a(array)
  array.select { |e| e.include? "a" }
end

def first_wa(array)
  array.find { |e| e[0]+e[1] == "wa"  }
end

def remove_non_strings(array)
  array.delete_if { |e| !(e.is_a? String)  }
end

def count_elements(array)
  count = {}
  array.each do |hash|
    hash.each do |key, val|
      if count.key?(val)
        count[val] +=1
      else
        count[val] = 1
      end
    end
  end
  result = []
  count.each { |name, count| result << {name: name, count: count} }

  result

end

def merge_data(data1, data2)

  data1.each do |hash|
    data2.each do |hash2|
      hash2.each do |name, info|
        if name == hash[:first_name]
          result << hash.merge(info)
        end
      end
    end
  end

  result

end

def find_cool(array)
  result = []

  array.each { |hash| result << hash if hash[:temperature] == "cool"  }
  result
end

def organize_schools(hash)
  result = Hash.new

  hash.each do |school, loc|
    result.key?(loc[:location]) ? result[loc[:location]] << school : result[loc[:location]] = [school]
  end

  result
end
