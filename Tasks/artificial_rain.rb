def artificial_rain(garden)
  left_section = 0
  longest_section = 0
  current_section = 1
  for item in 1...garden.length
    if garden[item] < garden[item - 1]
      left_section = item
    elsif garden[item] > garden[item-1]
      longest_section = longest_section < current_section ? current_section : longest_section
      current_section = item - left_section
    end
    current_section+=1
  end
  return longest_section > current_section ? longest_section : current_section
end


puts "Input: [4, 2, 3, 3, 2]"
print "Output: "
p artificial_rain([4, 2, 3, 3, 2])

