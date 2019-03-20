def begins_with_r tools
  value = true
  tools.each do |t|
    if t.scan(/\w/)[0] != "r"
      value = false
    end
  end
value
end

def contain_a tools
  arr = []
  tools.each do |t|
    for i in 0..tools.length-1
      if t.scan(/\w/)[i] == 'a'
        arr << t
      end
    end
  end
arr
end

def first_wa tools
  tools.each do |t|
    if t.to_s.scan(/(..)(..)/)[0][0] == 'wa'
      return t
    end
  end
end

def remove_non_strings(tools)
  tools.delete_if {|tool| tool.class != String}
end

def count_elements(array)
  counts = Hash.new(0)
  array.map {|name_hash| counts[name_hash]+=1}
  counts.map do |hash, count|
    hash[:count] = count
  end
  counts.keys
end

def merge_data(keys, data)
 keys.each do |name_hash|
   data.each do |hash|
     name_hash.merge!(hash[name_hash[:first_name]])
   end
 end
end

def find_cool cool
  cool.select {|hash| hash if hash.has_value?("cool") }
end

def organize_schools(schools)
  organized = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if organized[location] == nil
          organized[location] = [school]
        else
          organized[location] << school
        end
      end
    end
    organized
end
