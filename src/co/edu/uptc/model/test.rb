require_relative '../structures/simple_list'
require_relative '../structures/node'

class Test
  def self.run
    my_list = SimpleList.new
    my_list.add(1)
    my_list.add(2)
    my_list.add(3)
    my_list.add(4)

    puts my_list.get(0)
    puts my_list.get(1)
    puts my_list.get(2)
    puts my_list.get(3)

    my_list.remove_at(0)

    puts my_list.get(0)
  end
end

Test.run 