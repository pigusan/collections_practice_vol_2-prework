def begins_with_r(array)
  array.all? do |string|
    string[0] == 'r'
  end
end

#def begins_with_r(array)
#  return false if array.find do |string|
#    !string.start_with? 'r'
#  end
#  return true
#end

def contain_a(array)
  array.select do |string|
    string.include?('a')
  end
end

def first_wa(array)
  array.find do |string|
    string[0] == 'w' && string[1] == 'a'
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a?(String)
  end
end

def count_elements(array)
  new_array = []
  counts = Hash.new 0
  array.each do |objects|
    objects.each do |key, value|
      counts[value] += 1
    end
  end
  counts.each do |name, count|
    new_array << {name: name, count: count}
  end
  new_array
end

def merge_data(keys, data)
  merged_array = []
  keys.each do |obj|
    #puts obj
    name_key = obj[:first_name]
    #puts name_key
    data.each do |hash|
      #puts hash
      hash.each do |name_data, stats|
        if name_key == name_data
          merged_hash = {obj.key(name_key) => name_key}
          merged_array << merged_hash.merge(stats)
        end
      end
    end
  end
  merged_array
end

def find_cool(array)
  new_array = []
  array.each do |hash|
    temperature= hash[:temperature]
    if temperature == 'cool'
      new_array.push(hash)
    end
  end
  new_array
end

def organize_schools(school_hash)
  organized_hash = {}
  school_hash.each do |school_name, location_hash|
    location = location_hash[:location]
    organized_hash[location] = []
  end
  organized_hash.each do |schools_by_location|
    schools_by_location.each do |location_key, array_of_schools|
      school_hash.each do |school_name, location_hash|
        location = location_hash[:location]
        if location_key == location
          organized_hash[location_key] << school_name
        end
      end
    end
  end
  organized_hash
end
