puts 'creating frases'

frase_1 = Frase.create('tag': 'amigos')
frase_1.save

frase_2 = Frase.create('tag': 'amor')
frase_2.save

frase_3 = Frase.create('tag': 'futebol')
frase_3.save

frase_4 = Frase.create('tag': 'familia')
frase_4.save

frase_5 = Frase.create('tag': 'espirituoso')
frase_5.save

frase_6 = Frase.create('tag': 'amizade')
frase_6.save

puts 'frases criadas'