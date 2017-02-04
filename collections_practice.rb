def begins_with_r(array)
  output = true
  array.each do |word|
    if word[0] != "r"
      output = false
      break
    end
  end
  output
end



def contain_a(array)
  output = []
  array.each do |word|
    if word.include?("a")
      output << word
    end
  end
  output
end# your code goes here

def first_wa(array)
  output = ""
  array.each do |word|
    if word[0..1].to_s == "wa"
      output = word
      break
    end
  end
  output
end

def remove_non_strings(array)
  array.select! do |val|
    val.class == String
  end
end

def count_elements(array)
  new_array = array.uniq
  new_array.each do |hashes|
    hashes.merge!({count: array.count(hashes)})
  end
  new_array
end

def merge_data(keys, data)
  keys.each do |keys_hash|
    keys_hash.merge!(data[0][keys_hash[:first_name]])    
  end
  keys
end

def find_cool(cool)
  output = []
  cool.each do |hashes|
    if hashes[:temperature] == "cool"
      output << hashes
    end
  end
  output
end
    


def organize_schools(schools)
  organize_schools={}
  schools.each do |school, location_hash|
    if organize_schools.has_key?(location_hash[:location])
      organize_schools[location_hash[:location]] << school
    else
      organize_schools[location_hash[:location]] = [school]
    end
  end
  organize_schools
end


