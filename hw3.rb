#encoding: utf-8
require_relative 'classb.rb'
def method
  c = 300
  puts 'Переменная $a внутри метода - ' + defined?($a)
  puts 'Переменная b внутри метода - ' + defined?(b).to_s
  puts 'Переменная c внутри метода - ' + defined?(c)
end

$a = 100
b = 200
method

puts 'Переменная $a в основной программе - ' + defined?($a)
puts 'Переменная b в основной программе - ' + defined?(b)
puts 'Переменная c в основной программе - ' + defined?(c).to_s

puts 'Теперь проверка с циклами: '
d = 100
while $a >= 90 do
  e = $a
  if $a == 91
    puts 'Переменная d внутри метода - ' + defined?(d).to_s
    puts 'Переменная e внутри метода - ' + defined?(e).to_s
  end
  $a -= 1
end

puts 'Переменная d внутри метода - ' + defined?(d).to_s
puts 'Переменная e внутри метода - ' + defined?(e).to_s


puts 'Теперь проверим видимость в классе:'

f = 100
Bee = B.new
Bee.check_variables

puts 'И вне класса: '

puts 'Переменная f в основной программе - ' + defined?(f).to_s
puts 'Переменная @b основной программе - ' + defined?(Bee.b).to_s


