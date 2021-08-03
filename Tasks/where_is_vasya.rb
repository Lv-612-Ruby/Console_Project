def where_is_he(p, bef, aft)
    [p-bef,aft+1].min
end

puts where_is_he(12, 3, 8) //9

puts where_is_he(40, 1, 38) //39

puts where_is_he(3, 2, 0) //1