#kata 6
#https://www.codewars.com/kata/5592e3bd57b64d00f3000047/train/ruby
#

#Ваше завдання - побудувати будівлю, яка представлятиме купу з кубів.
# Куб внизу матиме обсяг n ^ 3, куб вгорі матиме об'єм (n-1) ^ 3
# і так далі до верху, який матиме обсяг 1 ^ 3.

#Вам дається загальний об’єм м будівлі.
# Отримавши m, чи можете ви знайти кількість n кубиків, які вам доведеться побудувати?

#Параметр функції findNb (find_nb, find-nb, findNb, ...) буде цілим числом m,
# і вам потрібно повернути ціле число n,
# таке як n ^ 3 + (n-1) ^ 3 + ... + 1 ^ 3 = m,
# якщо такий існує, або -1, якщо такого немає.

#Your task is to construct a building which will be a pile of n cubes.
# The cube at the bottom will have a volume of n^3,
# the cube above will have volume of (n-1)^3 and
# so on until the top which will have a volume of 1^3.
#
# You are given the total volume m of the building.
# Being given m can you find the number n of cubes you will have to build?
#
# The parameter of the function findNb (find_nb, find-nb, findNb, ...)
# will be an integer m and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m
# if such a n exists or -1 if there is no such n.

def find_nb(m)
  n, i = 0, 0

  while m > n
    i += 1
    n = n + (i)**3

  end
   if n  != m
     -1
   else
     i
    end
end

puts "Input: 4183059834009"
print "Output: "
p find_nb(4183059834009)  #2022 -- right answers
# puts find_nb(135440716410000)  #4824 -- right answers