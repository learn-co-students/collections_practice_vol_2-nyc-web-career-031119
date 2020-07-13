def begins_with_r(array)
array.all? {|chr| chr[0] == "r"}
end

def contain_a(array)
  array.select {|e| e.include?("a")}
end

def first_wa(array)
  array.detect {|e| e[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select {|element| element.is_a? String }
end

def count_elements(array)
  array.group_by(&:itself).map{|item, total| item.merge(count: total.length)}
  end

  def merge_data(key, data)
    merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
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
