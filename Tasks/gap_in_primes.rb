#Kata 6 gap in primes

def gap(g, m, n)
    numbers = (m).upto(n-1).select { |b| b.odd? }
    pair = nil
    numbers.each do |number|
      next unless is_prime?(number)
      if is_prime?(number + g) && !(number + 1).upto(number + g - 1).any? { |b| is_prime?(b) }
        pair = [number, number + g]
        break
      end
    end
    pair
end
  
  def is_prime?(number)
    return false if number <= 1
    (2..Math.sqrt(number)).each { |i| return false if (number % i).zero? }
  end

puts gap(2,100,110) #[101, 103]
puts gap(4,100,110) #[103, 107]
puts gap(6,100,110) #nil
puts gap(8,300,400) #[359, 367]
puts gap(10,300,400) #[337, 347]
      