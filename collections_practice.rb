require 'pry'
test = ["candy", "pepper", "wall", "ball", "wacky"]
names = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
def begins_with_r(array)
  array.all?{|x| x.start_with?("r")}
end

def contain_a(array)
  array.select {|string| string.include?('a')}
end

def first_wa(array)
  array.find{|x| "#{x}".start_with?("w")}
end

def remove_non_strings(array)
  array.keep_if {|x| x.is_a? String}
end

def count_elements(array)
  names_total = []
  answer = []
  array.each do |person|
    person.each do |symbol, name|
      names_total << name
    end
  end
  names_total.each do |names|
    answer << {:name => names, :count => names_total.count(names)}
  end
  answer.uniq
end

def merge_data(keys,data)
  keys.each do |new|
      data.each do |this|
        this.each do |individual,stats|
          new.has_value?(individual)
            stats.each do |spec, val|
              if new.has_value?(individual)
                new[spec] = val
              end
            end
          end
        end
      end
end

def find_cool(data)
  answer = {}
  data.each do |individual|
    if individual.has_value?("cool")
      answer = individual
    end
  end
[answer]
end

def organize_schools(data)
  answer = {}
  data.each do |key, value|
    value.each do |loc,location|
      if answer.has_key?(location)
        answer[location] << key
      else
      answer[location] = []
      answer[location] << key
      end
    end
  end
  answer
end


  # "flatiron school bk" => {
  #   :location => "NYC"
  # },
  # "flatiron school" => {
  #   :location => "NYC"
  # },
  # "dev boot camp" => {
  #   :location => "SF"
  # },
  # "dev boot camp chicago" => {
  #   :location => "Chicago"
  # },
  # "general assembly" => {
  #   :location => "NYC"
  # },
  # "Hack Reactor" => {
  #   :location => "SF"
  #
