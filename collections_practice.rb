# your code goes here
def begins_with_r(array)
array.all? do |word|
  word.start_with?("r")
end 
end 

def contain_a(array)
  array.select do |word|
  word.include? ("a")
end
end 

def first_wa(array)
 array.find  do |word|
  word[0..1] == "wa"
end
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end 

def count_elements(array)
array.group_by(&:itself).map{|item, total| item.merge(count: total.length)}
end 
  
def merge_data(key,data)
  merge =[]
  	key.each_index do |i|
  		data[0].keys.each do |name|
  	merge << key[i].merge(data[0][name]) if name == key[i][:first_name]
		end
	end
	merge
end 

def find_cool (array)
  new = []
new << array.find {|x| x[:temperature] == 'cool' }
end 

def organize_schools(array)
  new = {}
array.each do |school, location|
    # school = "flatiron school bk"
    # location = :location=>"NYC"
location.each do |key, city|
      # detail = :location
      # city = "NYC"
 if !new[city]
   new[city] = []
   new[city] << school
 else new[city]
   new[city] << school
 end 
# returns "citys in alpha order" => [array of schools in city"]
end
end
return new
end 




