puts "Elija una opción"
puts "1. Conozca la cantidad de productos existentes"
puts "2. Conocer el stock de un producto"
puts "3. Mostrar los productos no registrados en cada bodega"
puts "4. "
puts "5. "
puts "6. "

opc_usr = gets.chomp.to_i

case opc_usr
when 1 # Conozca la cantidad de productos existentes
  puts
  puts "Seleccione la opción deseada"
  puts "a. Mostrar la existencia por productos."
  puts "b. Mostrar la existencia total por tienda"
  puts "c. Mostrar la existencia total en todas las tiendas"
  puts "d. Volver al menú principal"

  sub_opc_usr = gets.chomp.to_s
  case sub_opc_usr
  when 'a' # Mostrar la existencia por productos
    file = File.open('productos.txt', 'r')
    data = file.readlines
    file.close

    cant = 0
    data.each do |prod|
      cant = prod.split(', ')[1].to_i + prod.split(', ')[2].to_i + prod.split(', ')[3].to_i
      puts "El producto #{prod.split(', ')[0]} tiene #{cant} items en stock"
    end
  when 'b' # Mostrar la existencia total por tienda
    file = File.open('productos.txt', 'r')
    data = file.readlines
    file.close

    resultado = {}
    resultado['tienda1'] = 0
    resultado['tienda2'] = 0
    resultado['tienda3'] = 0

    data.each do |prod|
      resultado['tienda1'] = resultado['tienda1'] + prod.split(', ')[1].to_i
      resultado['tienda2'] = resultado['tienda2'] + prod.split(', ')[2].to_i
      resultado['tienda3'] = resultado['tienda3'] + prod.split(', ')[3].to_i
    end

    puts "La tienda1 tiene #{resultado['tienda1']} items"
    puts "La tienda1 tiene #{resultado['tienda2']} items"
    puts "La tienda1 tiene #{resultado['tienda3']} items"


  when 'c' # Mostrar la existencia total en todas las tiendas
    file = File.open('productos.txt', 'r')
    data = file.readlines
    file.close

    total = 0
    data.each do |prod|
      total = total + prod.split(', ')[1].to_i + prod.split(', ')[2].to_i + prod.split(', ')[3].to_i
    end

    puts "La cantidad total de items en todas las tiendas es #{total}"


  when 'd' # Volver al menú principal
  else # Opción no válida
    puts "La opción ingresada no es válida"
  end

when 2
  puts "Ingrese el nombre del producto del cual desea conocer su stock"
  nom_prod = gets.chomp

  file = File.open('productos.txt', 'r')
  data = file.readlines
  file.close

  found = 0

  data.each do |x|
    if x.split(', ')[0] == nom_prod
      suma = x.split(', ')[1].to_i + x.split(', ')[2].to_i + x.split(', ')[3].to_i
      puts "El item tiene en stock #{suma} unidades"
      found = 1
    end
  end
  puts "El item indicado no se encuentra" if found == 0

when 3 # Mostrar los productos no registrados en cada bodega
  file = File.open('productos.txt', 'r')
  data = file.readlines
  file.close

  bodegas = {}
  bodegas['bodega1'] = []
  bodegas['bodega2'] = []
  bodegas['bodega3'] = []

  data.each do |x|
    if x.split(', ')[1].to_s.chomp == 'NR'
      bodegas['bodega1'].push(x.split(', ')[0])
      #puts x.split(', ')[1]
    end
    if x.split(', ')[2].to_s.chomp == 'NR'
      bodegas['bodega2'].push(x.split(', ')[0])
      #puts x.split(', ')[2]
    end
    if x.split(', ')[3].to_s.chomp == 'NR'
      bodegas['bodega3'].push(x.split(', ')[0])
      #puts x.split(', ')[3]
    end
  end

  msj = ""

  if bodegas['bodega1'].count > 0
    msj += "La bodega " 
  # puts bodegas['bodega1']
  # puts bodegas['bodega2']
  # puts bodegas['bodega3']




when 4
when 5
when 6
else
end
