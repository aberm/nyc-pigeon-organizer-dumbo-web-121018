require "pry"

def nyc_pigeon_organizer(data)
  
  new_data = {}
  names = []
  
  data.each do |attribute, info|
    # binding.pry
    info.each do |key, value|
      # binding.pry
      i = 0
      while i < value.length
        if names.include?(value[i]) == false
          names << value[i]
        end
      end
    end
  end
  new_data
end