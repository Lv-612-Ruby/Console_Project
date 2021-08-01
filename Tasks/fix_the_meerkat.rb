def fix_the_meerkat(arr)
  puts '----------------------------'
  return arr.reverse()

end

puts fix_the_meerkat(["tail", "body", "head"]) #["head", "body", "tail"]) -- right answer
puts fix_the_meerkat(["tails", "body", "heads"]) #["heads", "body", "tails"]) -- right answer
puts fix_the_meerkat(["bottom", "middle", "top"]) #["top", "middle", "bottom"]) -- right answer
puts fix_the_meerkat(["lower legs", "torso", "upper legs"]) #["upper legs", "torso", "lower legs"]) -- right answer
puts fix_the_meerkat(["ground", "rainbow", "sky"]) #["sky", "rainbow", "ground"]) -- right answer