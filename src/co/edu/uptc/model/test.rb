require_relative '../structures/simple_list'
require_relative '../structures/node'

class Test
  def self.run
    list = SimpleList.new

    loop do
      show_menu
      option = gets.chomp.to_i
      case option
      when 1
        add_element(list)
      when 2
        remove_element(list)
      when 3
        check_empty(list)
      when 4
        show_list(list)
      when 5
        object_position(list)
      when 6
        object_at_position(list)
      when 7
        object_count(list)
      when 8
        contains_object(list)
      when 9
        show_each(list)
      when 0
        puts "¡Hasta luego!"
        break
      else
        puts "Opción no válida."
      end
    end
  end

  def self.show_menu
    puts "\n--- Menú ---"
    puts "1. Agregar elemento"
    puts "2. Eliminar elemento"
    puts "3. Verificar que la lista está vacía"
    puts "4. ToString"
    puts "5. Posición de un objeto"
    puts "6. Objeto en la posición"
    puts "7. Cantidad de objetos en la lista"
    puts "8. ¿Se contiene un objeto en la lista?"
    puts "9. Mostrar objetos con each"
    puts "0. Salir"
    print "Seleccione una opción: "
  end

  def self.add_element(list)
    print "Ingrese el elemento a agregar: "
    value = gets.chomp
    list.add(value)
    puts "Elemento agregado."
  end

  def self.remove_element(list)
    print "Ingrese el elemento a eliminar: "
    value = gets.chomp
    if list.remove?(value)
      puts "Elemento eliminado."
    else
      puts "Elemento no encontrado."
    end
  end

  def self.check_empty(list)
    puts list.empty? ? "La lista está vacía." : "La lista NO está vacía."
  end

  def self.show_list(list)
    puts list.to_s
  end

  def self.object_position(list)
    print "Ingrese el objeto a buscar: "
    value = gets.chomp
    pos = list.index_of(value)
    if pos == -1
      puts "El objeto no está en la lista."
    else
      puts "La posición del objeto es: #{pos}"
    end
  end

  def self.object_at_position(list)
    print "Ingrese la posición: "
    idx = gets.chomp.to_i
    begin
      puts "El objeto en la posición #{idx} es: #{list.get(idx)}"
    rescue
      puts "Índice fuera de rango."
    end
  end

  def self.object_count(list)
    puts "Cantidad de objetos en la lista: #{list.size}"
  end

  def self.contains_object(list)
    print "Ingrese el objeto a verificar: "
    value = gets.chomp
    puts list.contains?(value) ? "El objeto está en la lista." : "El objeto NO está en la lista."
  end

  def self.show_each(list)
    puts "Objetos en la lista:"
    list.each { |value| puts value }
  end
end

Test.run