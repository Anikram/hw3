#encoding: utf-8
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
