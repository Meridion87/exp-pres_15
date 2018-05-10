str1 = "hola"
str2 = "mundo"
arreglo = ['que', 'bonito', 'es', 'este', 'arreglo']
color = '#00ff00'


def metodo1 (str1, str2)
  contenido = "<!DOCTYPE html>" + "\n"
  contenido += "<html>" + "\n"
  contenido += "<head>" + "\n"
	contenido += "<title>ejercicio 1</title>" + "\n"
  contenido += "</head>" + "\n"
  contenido += "<body>" + "\n"
  contenido += "<p>#{str1}<p>" + "\n"
  contenido += "<p>#{str2}<p>" + "\n"
  contenido += "</body>" + "\n"
  contenido += "</html>" + "\n"

  #print contenido

  file = File.open('index.html', 'w')
  file.puts contenido
  file.close
  return nil
end

def metodo2 (str1, str2, arr)
  contenido = "<!DOCTYPE html>" + "\n"
  contenido += "<html>" + "\n"
  contenido += "<head>" + "\n"
	contenido += "<title>ejercicio 1</title>" + "\n"
  contenido += "</head>" + "\n"
  contenido += "<body>" + "\n"
  contenido += "<p>#{str1}<p>" + "\n"
  contenido += "<p>#{str2}<p>" + "\n"
  if arr.any?
    contenido += "<ul>"
    arr.each do |x|
      contenido += "<li>#{x}</li>"
    end
    contenido += "</ul>"
  end
  contenido += "</body>" + "\n"
  contenido += "</html>" + "\n"

  file = File.open('index.html', 'w')
  file.puts contenido
  file.close
  return nil
end

def metodo3 (str1, str2, arr,color)
  contenido = "<!DOCTYPE html>" + "\n"
  contenido += "<html>" + "\n"
  contenido += "<head>" + "\n"
	contenido += "<title>ejercicio 1</title>" + "\n"
  contenido += "</head>" + "\n"
  contenido += "<body>" + "\n"
  contenido += "<p style=\"background-color:#{color} \">#{str1}<p>" + "\n"
  contenido += "<p style=\"background-color:#{color} \">#{str2}<p>" + "\n"
  if arr.any?
    contenido += "<ul>"
    arr.each do |x|
      contenido += "<li>#{x}</li>"
    end
    contenido += "</ul>"
  end
  contenido += "</body>" + "\n"
  contenido += "</html>" + "\n"

  file = File.open('index.html', 'w')
  file.puts contenido
  file.close
  return nil
end

#metodo1(str1,str2)
#metodo2(str1, str2, arreglo)
metodo3(str1, str2, arreglo, color)
