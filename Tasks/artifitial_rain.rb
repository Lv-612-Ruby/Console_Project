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

# puts artificial_rain([4, 2, 3, 3, 2])


def run_task
  input = nil
  until input
    print 'Enter number array (1 2 ..): '
    input = gets.chomp
    array = parse_to_array(input)
  end
  puts artificial_rain(array)
end

def parse_to_array(input)
  array = input.delete(' ')
  array.each_char.map(&:to_i)
rescue StandardError
  nil
end

#Маленький Петя часто відвідує бабусю на селі.
# У бабусі є великий вертикальний сад,
# який можна представити у вигляді набору nпрямокутників різної висоти.
# Завдяки найновішій системі зрошення ми можемо створити над ними штучний дощ.
#
# Створення штучного дощу - дорога операція.
# Ось чому ми обмежуємось створенням штучного дощу лише над одним розділом.
# Тоді вода буде надходити до сусідніх ділянок,
# але тільки якщо кожна з їх висот не перевищує висоту попередньої поливної ділянки.
#
# Скажімо, є сад, що складається з 5 прямокутних ділянок висот 4, 2, 3, 3, 2.
#
# Створення штучного дощу над крайньою лівою частиною є неефективним,
# оскільки вода БУДЕ ВНИЗ на ділянку з висотою 2,
# але НЕ БУДЕ ВЛАСНЯ на ділянку з висотою 3звідти.
# Будуть покриті тільки 2 секції: 4, 2.
#
# Найбільш оптимальний вибір буде або з секцій з висотою,
# 3тому що вода буде текти до своїх сусідів, що охоплюють 4 секції в цілому: 2, 3, 3, 2
#
# Оскільки Петя захоплюється програмуванням,
# він вирішив знайти такий розділ,
# що якщо ми створимо над ним штучний дощ,
# кількість поливних ділянок буде максимальним.