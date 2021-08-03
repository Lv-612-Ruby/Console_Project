def count_positives_sum_negatives(lst)
  return [] if lst.nil? || lst.empty? #these code analizy empty or nil
  [lst.reject { |x| x < 1 }.count, (lst.reject { |x| x > -1 }).sum] #main count positive and sum negative
end

puts count_positives_sum_negatives([2, 3, 5, 6, -1, -5, -7, -10])
  