# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select do |word| 
    word.include?('a')
  end
end

def first_wa(array)
  array.find do |word|
    word[0] == 'w' && word[1] =='a'
  end
end

def remove_non_strings(array)
  array.delete_if {|word| !(word.is_a? String)}
end

def count_elements(array)
  array.group_by(&:itself) #groups same elements
  .map {|x, i| x.merge(count: i.length)}
end

def merge_data(array1, array2)
  merged = []
   array1.each {|i| array2.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

def find_cool(cool)
  cool.select {|i| i.any? {|k,v| v == "cool"}} 
end

def organize_schools(schools)
   locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end