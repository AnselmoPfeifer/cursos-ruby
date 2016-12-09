class Float
  def para_valores
    valor = "R$" << self.to_s.tr('.', ',')
    valor << "0" unless valor.match /(.*)(\d{2})$/
    valor
  end
end

puts valores = [30.00, 40.00, 70.00, 59.00]
valores_string = []
valores.each do |preco|
  puts preco.class
  valores_string << preco.para_valores
end
puts valores_string.to_s