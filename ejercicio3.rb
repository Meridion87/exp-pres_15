str = "Guerra"

def cuenta_palabras()
  file = File.open('peliculas.txt', 'r')
  data = file.read
  file.close

  puts "La cantidad de palabras es #{data.split(' ').count}"
end

def cuenta_la_palabra(str)
  file = File.open('peliculas.txt', 'r')
  data = file.read
  file.close

  data.count(str)

  cont = 0
  data.split(' ').each do |x|
    cont += 1 if x == str
  end

  puts "La cantidad de palabras es #{cont}"
end


#cuenta_palabras()

cuenta_la_palabra(str)
