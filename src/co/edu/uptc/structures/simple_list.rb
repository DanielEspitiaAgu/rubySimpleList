class SimpleList
   include Enumerable

  def initialize
    @head = nil
  end

  def add(element)
    new_node = Node.new(element)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
    true
  end

  def clear
    @head= nil
  end

  def size  
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end

  def empty?
    @head.nil?
  end

  def contains?(obj)
    current = @head
    while current
      return true if current.value == obj
      current = current.next_node
    end
    false
  end

  def each
    current = @head
    while current
      yield current.value
      current = current.next_node
    end
  end

  def to_a
    array = []
    current = @head
    while current
      array << current.value
      current = current.next_node
    end
  array
  end

  def remove?(obj)
    current = @head
    previous = nil


    while current!=nil
      if current.value == obj
        if previous.nil?
          @head = current.next_node
        else
          previous.next_node= current.next_node
        end
      return  true
      end
      previous = current
      current = current.next_node
    end


    false
  end

  def get(index)
    return get_node_at(index).value
  end

  def set(index, element)
    validate_set_exceptions(index, element)
    uptdate_node= get_node_at(index)
    old_value = uptdate_node.value
    uptdate_node.value = element
    return old_value 
  end
  
  def add_at(index, element)
    if element.nil?
      raise "Elemento nulo"  

    end
    if index<0 || index> size
      raise "Indice fuera de rango" 
      
    end
    if index == 0
      new_node = Node.new(element)
      new_node.next_node= @head
      @head = new_node
      
    else
      current = @head
      
      i=0
      while i < index-1
        break if current.next_node.nil?
        current = current.next_node
        i+=1
      end
      new_node = Node.new(element)
      new_node.next_node = current.next_node
      current.next_node = new_node
    end
  end
  
  def remove_at(index)
    if index <0
      raise "Index out of bounds"     
      
    end
    if index==0 
      removed_element = @head.value
      @head = @head.next_node
      return removed_element
      
    end
    current= @head.next_node
    previous = @head
     
    i = 0
    while i < index - 1
      current = current.next_node
      previous = previous.next_node
      i += 1
    end
    
    removed_element = current.value
    previous.next_node = current.next_node
    return removed_element
  end
  
  def index_of(obj)
    current = @head
    index = 0
    while current
      return index if current.value == obj
      current = current.next_node
      index += 1
    end
    -1
  end
  
  def last_index_of(obj)
    current = @head
    index = 0
    last_index = -1
    while current
      last_index = index if current.value == obj
      current = current.next_node
    index += 1
    end
    last_index
  end
  
  def sub_list(from_index, to_index)
    sublist = SimpleList.new
    if from_index<0 || to_index > size || from_index > to_index
      raise "Index out of bounds"
    end
    current = @head
    index =0
    while current!= nil && index < from_index
      current = current.next_node
      index+=1
    end
    while current!= nil && index <= to_index
      sublist.add(current.value)
      current = current.next_node
      index +=1
    end
    return sublist
  end
  
  def to_s
  elements = []
  current = @head
  while current != nil
    elements << current.value
    current = current.next_node
  end
  "Lista simple: [#{elements.join(", ")}]"
  end

  private
  
  def get_node_at(index)
    current=@head
    current_index=0
    while current!=nil
      if current_index == index
        return current    
      end
      current = current.next_node
      current_index+=1
    end
    raise "Index out of bounds"
    
  end

  private

  def validate_set_exceptions(index, element)
    if index<0
      raise IndexError, "Index out of bounds"
    end
    if element.nil?
      raise "El elemento es nulo"  
      
    end
  end
  
  private

  def node_at(index)
    raise "Negative index" if index < 0

    current = @head
    current_index = 0

    while current
      return current if current_index == index
      current = current.next_node
      current_index += 1
    end

    raise "Index out of bounds"
  end
  
end