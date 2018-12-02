require "pry"

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  names = []
  
  data.each do |attribute, info|
    info.each do |key, value|
      i = 0
      while i < value.length
        if names.include?(value[i]) == false
          names << value[i]
          i += 1
        else
          i += 1
        end
      end
    end
  end
  
  names.each do |name|
    pigeon_list[name] = {}
  end
  
  x = 0
  while x < names.length
    
    data.each do |attribute, info|
      info.each do |key, value|
        y = 0
        while y < value.length
        binding.pry
          if y == names[x]
            pigeon_list[names[x]][info] = []
            pigeon_list[names[x]][info] << key.to_s
            y += 1
          else
            y += 1
          end
        end
      end
    end
    x += 1
  end
  
  pigeon_list
end