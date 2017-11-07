class B
  def initialize
    @b = 200
  end
  def check_variables
    puts 'Переменная f внутри класса B - ' + defined?(f).to_s
    puts 'Переменная @b внутри класса B - ' + defined?(@b).to_s
  end
end

