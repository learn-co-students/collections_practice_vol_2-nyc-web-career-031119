# your code goes here
def begins_with_r(array)
foo = ""
  array.map do |word|
    if word.start_with?("r")
      foo = true
    else
    foo = false
    end
  end
  foo
end

def contain_a(array)
  foo = []
  array.map do |word|
    if word.include?('a')
      foo.push(word)
    end
  end
  foo
end

def first_wa(array)
  foo = []
  i = 0
  bar = array.join(" ")
  str = bar.split(" ")
  while i < str.length
  if str[i].start_with?("wa")
  foo.push(str[i])
  end
  i += 1
end
  foo[0]
end

def remove_non_strings(array)
array.delete_if { |item| !(item.is_a? String) }
end

def count_elements(array)
  array.uniq.each do|i| count = 0
         array.each {|k| if k == i then count += 1 end}
         i[:count] = count
       end
end

def merge_data(keys, data)
  foo = []
  keys.each do |i|
    data.first.map do |k,v|
      if i.values[0] == k
        then
        foo << i.merge(v)
      end
      end
  end
  foo
end

def find_cool(array)
  array.select { |i| i.any? { |k,v| v == "cool"}}
end

def organize_schools(schools)
  locations_hash = {}
 schools.collect {|k,v| locations_hash[v[:location]] = []}
 locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end
