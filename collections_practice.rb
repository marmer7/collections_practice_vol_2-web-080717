require 'pry'

def begins_with_r(arr)
  arr.each do |e|
    if e[0].downcase != 'r'
      return false
    end
  end
  return true
end

def contain_a(arr)
  arr.select do |e|
    e.include?("a")
  end
end

def first_wa(arr)
  arr.find do |e|
    e[0..1] == "wa"
  end
end

def remove_non_strings(arr)
  arr.select do |e|
    e.class == String
  end
end

def count_elements(arr)
  arr.uniq.map do |e|
    e.merge({count: arr.count(e)})
  end
end

def merge_data(keys, data)
  i = 0
  data[0].map do |k, v|
    x = keys[i].merge(v)
    i += 1
    x
  end
end

def find_cool(arr)
  arr.select do |hash|
    hash.values.include?("cool")
  end
end

# {"flatiron school bk"=>{:location=>"NYC"},
#  "flatiron school"=>{:location=>"NYC"},
#  "dev boot camp"=>{:location=>"SF"},
#  "dev boot camp chicago"=>{:location=>"Chicago"},
#  "general assembly"=>{:location=>"NYC"},
#  "Hack Reactor"=>{:location=>"SF"}}

def organize_schools(schools)
  newH = Hash.new
  schools.each do |school|
    location = school[1][:location]
    if newH[location] == nil
      newH[location] = []
    end
    newH[location] << school[0]
  end
  newH
end
