require_relative '../structures/simple_list'
require_relative '../structures/node'

class Test
  def self.run
    my_list = SimpleList.new

    puts "Esta vacia"
    puts my_list.empty?

    my_list.add(1)
    my_list.add(2)
    my_list.add(3)
    my_list.add(4)
    my_list.add(5)

    puts my_list.get(0)
    puts my_list.get(1)
    puts my_list.get(2)
    puts my_list.get(3)

    puts "Esta es la lista despues de remove_add" 

    puts my_list.remove_at(0)

    puts my_list.to_s();

    my_list.each do |value|
      puts "Numero: #{value}"
    end

    puts "Esta es la lista despues de add_at" 

    my_list.add_at(0,3)
    my_list.add_at(1,4)
    my_list.add_at(2,5)

    puts my_list.to_s();

    my_list.set(0, 1);
    
    my_list.add("Camila")
    
    puts my_list.to_s

    

  end
end

Test.run 