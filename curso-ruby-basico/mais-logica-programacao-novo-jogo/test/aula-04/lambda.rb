#Ruby lambda literal syntax
bemvindo = -> (nome){
  puts "Bem vindo #{nome}"
}

minha_funcao = bemvindo
minha_funcao.call("Anselmo")

