require 'pry'
# your code goes here
def begins_with_r(tools)
  new_arr = []
  tools.each do |tool|
    if tool.start_with?("r")
      new_arr.push(tool)
    end
    new_arr
  end
  if new_arr.size == tools.size
    true
  else
    false
  end
end

def contain_a(elements)
  elements.select do |x|
    x.include?("a")
  end
end

def first_wa(elements)
    elements.find do |x|
      if x.is_a? String
        x.start_with?("wa")
      end
    end
end

def remove_non_strings(elements)
  elements.delete_if do |x|
    !x.is_a? String
  end
end

def count_elements(elements)
  counts = []
  names = []
  elements.each do |x|
    counts.push(elements.count(x))
    x.each_value {|value| names.push(value)}
  end
  new_arr = []
  i = 0
  while i < names.length
    new_arr.push({count: counts[i], name: names[i]})
    i += 1
  end
  new_arr.uniq
end

def merge_data(keys, data)
  new_hash = {}
  new_arr = []
  data[0].each do |name_key, attributes|
    if name_key == keys[0][:first_name]
      attributes.each do |attribute, value|
        new_hash[attribute] = value
        new_hash[:first_name] = keys[0][:first_name]
        new_hash[:motto] = keys[0][:motto]
      end
      new_arr[0] = new_hash
      new_hash = {}
    elsif name_key == keys[1][:first_name]
      attributes.each do |attribute, value|
        new_hash[attribute] = value
        new_hash[:first_name] = keys[1][:first_name]
        new_hash[:motto] = keys[1][:motto]
      end
      new_arr[1] = new_hash
      new_hash = {}
    end
  end
  new_arr
end

def find_cool(cool)
  new_arr = []
  i = 0
  while i < cool.length
    cool[i].each do |attribute, value|
      if cool[i].has_value?("cool")
        new_arr[i] = cool[i]
      end
    end
    i += 1
  end
  new_arr.compact
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school_name, attributes|
    attributes.each do |attribute, value|
      if attribute == :location && !new_hash.has_key?(value)
        new_hash[value] = []
        new_hash[value].push(school_name)
      elsif attribute == :location && new_hash.has_key?(value)
        new_hash[value].push(school_name)
      end
    end
  end
  new_hash
end
