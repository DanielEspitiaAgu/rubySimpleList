class SimpleList

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
    current = @head
    current_index = 0
    while current != nil
      return current.value if current_index == index
      current = current.next_node
      current_index += 1
    end
    raise "Index out of bounds"
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
  
  def to_s
  elements = []
  current = @head
  while current != nil
    elements << current.value
    current = current.next_node
  end
  "Lista simple: [#{elements.join(", ")}]"
  end
  
end